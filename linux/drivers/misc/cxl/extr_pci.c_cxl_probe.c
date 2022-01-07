
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct cxl {int slices; int * afu; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct cxl*) ;
 int PTR_ERR (struct cxl*) ;
 int cxl_afu_select_best_mode (int ) ;
 scalar_t__ cxl_is_power9 () ;
 struct cxl* cxl_pci_init_adapter (struct pci_dev*) ;
 scalar_t__ cxl_pci_is_vphb_device (struct pci_dev*) ;
 scalar_t__ cxl_slot_is_switched (struct pci_dev*) ;
 scalar_t__ cxl_verbose ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int,...) ;
 int dev_info (int *,char*) ;
 int dump_cxl_config_space (struct pci_dev*) ;
 int pci_init_afu (struct cxl*,int,struct pci_dev*) ;
 int radix_enabled () ;

__attribute__((used)) static int cxl_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct cxl *adapter;
 int slice;
 int rc;

 if (cxl_pci_is_vphb_device(dev)) {
  dev_dbg(&dev->dev, "cxl_init_adapter: Ignoring cxl vphb device\n");
  return -ENODEV;
 }

 if (cxl_slot_is_switched(dev)) {
  dev_info(&dev->dev, "Ignoring card on incompatible PCI slot\n");
  return -ENODEV;
 }

 if (cxl_is_power9() && !radix_enabled()) {
  dev_info(&dev->dev, "Only Radix mode supported\n");
  return -ENODEV;
 }

 if (cxl_verbose)
  dump_cxl_config_space(dev);

 adapter = cxl_pci_init_adapter(dev);
 if (IS_ERR(adapter)) {
  dev_err(&dev->dev, "cxl_init_adapter failed: %li\n", PTR_ERR(adapter));
  return PTR_ERR(adapter);
 }

 for (slice = 0; slice < adapter->slices; slice++) {
  if ((rc = pci_init_afu(adapter, slice, dev))) {
   dev_err(&dev->dev, "AFU %i failed to initialise: %i\n", slice, rc);
   continue;
  }

  rc = cxl_afu_select_best_mode(adapter->afu[slice]);
  if (rc)
   dev_err(&dev->dev, "AFU %i failed to start: %i\n", slice, rc);
 }

 return 0;
}
