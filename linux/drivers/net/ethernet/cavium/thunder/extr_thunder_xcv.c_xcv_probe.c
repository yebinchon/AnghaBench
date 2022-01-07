
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct xcv {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_5__ {int reg_base; struct pci_dev* pdev; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCI_CFG_REG_BAR_NUM ;
 int dev_err (struct device*,char*,...) ;
 int devm_kfree (struct device*,TYPE_1__*) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,TYPE_1__*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;
 TYPE_1__* xcv ;

__attribute__((used)) static int xcv_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 int err;
 struct device *dev = &pdev->dev;

 xcv = devm_kzalloc(dev, sizeof(struct xcv), GFP_KERNEL);
 if (!xcv)
  return -ENOMEM;
 xcv->pdev = pdev;

 pci_set_drvdata(pdev, xcv);

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(dev, "Failed to enable PCI device\n");
  goto err_kfree;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(dev, "PCI request regions failed 0x%x\n", err);
  goto err_disable_device;
 }


 xcv->reg_base = pcim_iomap(pdev, PCI_CFG_REG_BAR_NUM, 0);
 if (!xcv->reg_base) {
  dev_err(dev, "XCV: Cannot map CSR memory space, aborting\n");
  err = -ENOMEM;
  goto err_release_regions;
 }

 return 0;

err_release_regions:
 pci_release_regions(pdev);
err_disable_device:
 pci_disable_device(pdev);
err_kfree:
 devm_kfree(dev, xcv);
 xcv = ((void*)0);
 return err;
}
