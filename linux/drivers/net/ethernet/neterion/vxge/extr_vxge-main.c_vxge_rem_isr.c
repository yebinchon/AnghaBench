
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ intr_type; } ;
struct vxgedev {TYPE_2__* pdev; TYPE_1__ config; } ;
struct TYPE_4__ {int irq; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ INTA ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ MSI_X ;
 int free_irq (int ,struct vxgedev*) ;
 int synchronize_irq (int ) ;
 int vxge_rem_msix_isr (struct vxgedev*) ;

__attribute__((used)) static void vxge_rem_isr(struct vxgedev *vdev)
{
 if (IS_ENABLED(CONFIG_PCI_MSI) &&
     vdev->config.intr_type == MSI_X) {
  vxge_rem_msix_isr(vdev);
 } else if (vdev->config.intr_type == INTA) {
   synchronize_irq(vdev->pdev->irq);
   free_irq(vdev->pdev->irq, vdev);
 }
}
