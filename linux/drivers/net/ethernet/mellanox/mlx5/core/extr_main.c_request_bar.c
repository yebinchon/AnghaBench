
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DRIVER_NAME ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_flags (struct pci_dev*,int ) ;

__attribute__((used)) static int request_bar(struct pci_dev *pdev)
{
 int err = 0;

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_MEM)) {
  dev_err(&pdev->dev, "Missing registers BAR, aborting\n");
  return -ENODEV;
 }

 err = pci_request_regions(pdev, DRIVER_NAME);
 if (err)
  dev_err(&pdev->dev, "Couldn't get PCI resources, aborting\n");

 return err;
}
