
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int velocity_remove (int *) ;

__attribute__((used)) static void velocity_pci_remove(struct pci_dev *pdev)
{
 velocity_remove(&pdev->dev);

 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
