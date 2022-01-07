
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_resources {int addr; int irq; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; int irq; } ;
typedef int res ;


 int BIT (int) ;
 int PCI_STD_RESOURCE_END ;
 int XLGMAC_DRV_NAME ;
 int dev_err (struct device*,char*) ;
 int memset (struct xlgmac_resources*,int ,int) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int ,int ) ;
 int * pcim_iomap_table (struct pci_dev*) ;
 int xlgmac_drv_probe (struct device*,struct xlgmac_resources*) ;

__attribute__((used)) static int xlgmac_probe(struct pci_dev *pcidev, const struct pci_device_id *id)
{
 struct device *dev = &pcidev->dev;
 struct xlgmac_resources res;
 int i, ret;

 ret = pcim_enable_device(pcidev);
 if (ret) {
  dev_err(dev, "ERROR: failed to enable device\n");
  return ret;
 }

 for (i = 0; i <= PCI_STD_RESOURCE_END; i++) {
  if (pci_resource_len(pcidev, i) == 0)
   continue;
  ret = pcim_iomap_regions(pcidev, BIT(i), XLGMAC_DRV_NAME);
  if (ret)
   return ret;
  break;
 }

 pci_set_master(pcidev);

 memset(&res, 0, sizeof(res));
 res.irq = pcidev->irq;
 res.addr = pcim_iomap_table(pcidev)[i];

 return xlgmac_drv_probe(&pcidev->dev, &res);
}
