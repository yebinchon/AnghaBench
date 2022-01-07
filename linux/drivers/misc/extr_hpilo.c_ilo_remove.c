
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct TYPE_2__ {int dev; } ;
struct ilo_hwinfo {TYPE_1__ cdev; } ;


 int MINOR (int ) ;
 int MKDEV (int ,int) ;
 int cdev_del (TYPE_1__*) ;
 int clear_device (struct ilo_hwinfo*) ;
 int device_destroy (int ,int ) ;
 int free_irq (int ,struct ilo_hwinfo*) ;
 int ilo_class ;
 int ilo_disable_interrupts (struct ilo_hwinfo*) ;
 scalar_t__* ilo_hwdev ;
 int ilo_major ;
 int ilo_unmap_device (struct pci_dev*,struct ilo_hwinfo*) ;
 int kfree (struct ilo_hwinfo*) ;
 int max_ccb ;
 struct ilo_hwinfo* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void ilo_remove(struct pci_dev *pdev)
{
 int i, minor;
 struct ilo_hwinfo *ilo_hw = pci_get_drvdata(pdev);

 if (!ilo_hw)
  return;

 clear_device(ilo_hw);

 minor = MINOR(ilo_hw->cdev.dev);
 for (i = minor; i < minor + max_ccb; i++)
  device_destroy(ilo_class, MKDEV(ilo_major, i));

 cdev_del(&ilo_hw->cdev);
 ilo_disable_interrupts(ilo_hw);
 free_irq(pdev->irq, ilo_hw);
 ilo_unmap_device(pdev, ilo_hw);
 pci_release_regions(pdev);
 kfree(ilo_hw);
 ilo_hwdev[(minor / max_ccb)] = 0;
}
