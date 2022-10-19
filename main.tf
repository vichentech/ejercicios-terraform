# Comentario
provider "aws" {
  region = "eu-west-3"
  # secret_key = ""
  # access_key = ""
}

# variable path clave ssh
variable "ssh_key_path" {}


# Recurso de clave SSH en AWS
resource "aws_key_pair" "deployer" {
 key_name = "deployer-key"
 public_key = file(var.ssh_key_path)
 tags = {
  Name = "vichen73-ssh"
 }
}
