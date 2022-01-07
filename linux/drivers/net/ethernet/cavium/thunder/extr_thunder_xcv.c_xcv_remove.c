
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;


 int devm_kfree (struct device*,int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int * xcv ;

__attribute__((used)) static void xcv_remove(struct pci_dev *pdev)
{
 struct device *dev = &pdev->dev;

 if (xcv) {
  devm_kfree(dev, xcv);
  xcv = ((void*)0);
 }

 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
