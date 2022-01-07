
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct cxl {scalar_t__ perst_same_image; TYPE_1__ dev; } ;


 int EINVAL ;
 int cxl_data_cache_flush (struct cxl*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int pci_set_pcie_reset_state (struct pci_dev*,int ) ;
 int pcie_warm_reset ;
 struct pci_dev* to_pci_dev (int ) ;

int cxl_pci_reset(struct cxl *adapter)
{
 struct pci_dev *dev = to_pci_dev(adapter->dev.parent);
 int rc;

 if (adapter->perst_same_image) {
  dev_warn(&dev->dev,
    "cxl: refusing to reset/reflash when perst_reloads_same_image is set.\n");
  return -EINVAL;
 }

 dev_info(&dev->dev, "CXL reset\n");




 cxl_data_cache_flush(adapter);




 if ((rc = pci_set_pcie_reset_state(dev, pcie_warm_reset))) {
  dev_err(&dev->dev, "cxl: pcie_warm_reset failed\n");
  return rc;
 }

 return rc;
}
