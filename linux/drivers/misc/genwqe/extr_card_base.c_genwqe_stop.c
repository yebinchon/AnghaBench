
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int pci_dev; } ;


 int genwqe_device_remove (struct genwqe_dev*) ;
 int genwqe_ffdc_buffs_free (struct genwqe_dev*) ;
 int genwqe_finish_queue (struct genwqe_dev*) ;
 scalar_t__ genwqe_is_privileged (struct genwqe_dev*) ;
 int genwqe_release_service_layer (struct genwqe_dev*) ;
 int pci_disable_sriov (int ) ;

__attribute__((used)) static int genwqe_stop(struct genwqe_dev *cd)
{
 genwqe_finish_queue(cd);
 genwqe_device_remove(cd);
 genwqe_release_service_layer(cd);

 if (genwqe_is_privileged(cd)) {
  pci_disable_sriov(cd->pci_dev);
  genwqe_ffdc_buffs_free(cd);
 }

 return 0;
}
