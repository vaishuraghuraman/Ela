provider "google" {
  project = "qwiklabs-gcp-00-62cdd291e2d2"
}
resource "google_compute_instance" "default" {
  name         = "elakkiya"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
