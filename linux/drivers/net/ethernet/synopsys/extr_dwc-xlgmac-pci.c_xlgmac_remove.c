
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int xlgmac_drv_remove (int *) ;

__attribute__((used)) static void xlgmac_remove(struct pci_dev *pcidev)
{
 xlgmac_drv_remove(&pcidev->dev);
}
