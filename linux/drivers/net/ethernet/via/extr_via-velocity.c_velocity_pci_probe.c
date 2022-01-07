
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info_tbl {int dummy; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int irq; int dev; } ;


 int BUS_PCI ;
 int VELOCITY_NAME ;
 struct velocity_info_tbl* chip_info_table ;
 int dev_err (int *,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int velocity_probe (int *,int ,struct velocity_info_tbl const*,int ) ;

__attribute__((used)) static int velocity_pci_probe(struct pci_dev *pdev,
          const struct pci_device_id *ent)
{
 const struct velocity_info_tbl *info =
     &chip_info_table[ent->driver_data];
 int ret;

 ret = pci_enable_device(pdev);
 if (ret < 0)
  return ret;

 ret = pci_request_regions(pdev, VELOCITY_NAME);
 if (ret < 0) {
  dev_err(&pdev->dev, "No PCI resources.\n");
  goto fail1;
 }

 ret = velocity_probe(&pdev->dev, pdev->irq, info, BUS_PCI);
 if (ret == 0)
  return 0;

 pci_release_regions(pdev);
fail1:
 pci_disable_device(pdev);
 return ret;
}
