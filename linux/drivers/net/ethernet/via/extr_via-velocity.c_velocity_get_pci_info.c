
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {void* memaddr; void* ioaddr; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 scalar_t__ VELOCITY_IO_SIZE ;
 int dev_err (int *,char*) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int velocity_get_pci_info(struct velocity_info *vptr)
{
 struct pci_dev *pdev = vptr->pdev;

 pci_set_master(pdev);

 vptr->ioaddr = pci_resource_start(pdev, 0);
 vptr->memaddr = pci_resource_start(pdev, 1);

 if (!(pci_resource_flags(pdev, 0) & IORESOURCE_IO)) {
  dev_err(&pdev->dev,
      "region #0 is not an I/O resource, aborting.\n");
  return -EINVAL;
 }

 if ((pci_resource_flags(pdev, 1) & IORESOURCE_IO)) {
  dev_err(&pdev->dev,
      "region #1 is an I/O resource, aborting.\n");
  return -EINVAL;
 }

 if (pci_resource_len(pdev, 1) < VELOCITY_IO_SIZE) {
  dev_err(&pdev->dev, "region #1 is too small.\n");
  return -EINVAL;
 }

 return 0;
}
