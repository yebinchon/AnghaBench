
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ intr_type; } ;
struct vxgedev {int no_of_vpath; int pdev; TYPE_1__ config; TYPE_2__* vxge_entries; TYPE_2__* entries; } ;
struct TYPE_4__ {scalar_t__ in_use; int arg; int vector; } ;


 scalar_t__ MSI_X ;
 int free_irq (int ,int ) ;
 int kfree (TYPE_2__*) ;
 int pci_disable_msix (int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void vxge_rem_msix_isr(struct vxgedev *vdev)
{
 int intr_cnt;

 for (intr_cnt = 0; intr_cnt < (vdev->no_of_vpath * 2 + 1);
  intr_cnt++) {
  if (vdev->vxge_entries[intr_cnt].in_use) {
   synchronize_irq(vdev->entries[intr_cnt].vector);
   free_irq(vdev->entries[intr_cnt].vector,
    vdev->vxge_entries[intr_cnt].arg);
   vdev->vxge_entries[intr_cnt].in_use = 0;
  }
 }

 kfree(vdev->entries);
 kfree(vdev->vxge_entries);
 vdev->entries = ((void*)0);
 vdev->vxge_entries = ((void*)0);

 if (vdev->config.intr_type == MSI_X)
  pci_disable_msix(vdev->pdev);
}
