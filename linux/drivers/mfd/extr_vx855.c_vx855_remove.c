
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int mfd_remove_devices (int *) ;
 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void vx855_remove(struct pci_dev *pdev)
{
 mfd_remove_devices(&pdev->dev);
 pci_disable_device(pdev);
}
