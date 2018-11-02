###Null resource generating hostnames  with OS type and random animal name 
resource "null_resource" "helloWorld" {
  provisioner "local-exec" {
    command = "echo This generates name the following hostname  web-${var.lin-os}-${random_pet.server.id}"
  }
}

###Varialbe for the OS type
variable "lin-os" {
  type        = "string"
  default     = "lin"
  description = "Name convention putting the OS in the name of the system"
}

###random_pet resource that generate random animal names
resource "random_pet" "server" {
  length    = "1"
  separator = "-"
}
