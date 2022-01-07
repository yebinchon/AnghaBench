
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_4__ {int release; int * parent; } ;
struct cxl {int tunneled_ops_supported; TYPE_3__* native; TYPE_1__ dev; } ;
struct TYPE_6__ {TYPE_2__* sl_ops; } ;
struct TYPE_5__ {int (* adapter_regs_init ) (struct cxl*,struct pci_dev*) ;int capi_mode; } ;


 int OPAL_PHB_CAPI_MODE_SNOOP_ON ;
 int cxl_fixup_malformed_tlp (struct cxl*,struct pci_dev*) ;
 scalar_t__ cxl_is_power9 () ;
 int cxl_map_adapter_regs (struct cxl*,struct pci_dev*) ;
 int cxl_native_register_psl_err_irq (struct cxl*) ;
 int cxl_read_vsec (struct cxl*,struct pci_dev*) ;
 int cxl_release_adapter ;
 int cxl_setup_psl_timebase (struct cxl*,struct pci_dev*) ;
 int cxl_unmap_adapter_regs (struct cxl*) ;
 int cxl_update_image_control (struct cxl*) ;
 int cxl_vsec_looks_ok (struct cxl*,struct pci_dev*) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct cxl*) ;
 int pci_set_master (struct pci_dev*) ;
 scalar_t__ pnv_pci_set_tunnel_bar (struct pci_dev*,int,int) ;
 int pnv_phb_to_cxl_mode (struct pci_dev*,int ) ;
 int sanitise_adapter_regs (struct cxl*) ;
 int setup_cxl_bars (struct pci_dev*) ;
 int stub1 (struct cxl*,struct pci_dev*) ;
 int switch_card_to_cxl (struct pci_dev*) ;

__attribute__((used)) static int cxl_configure_adapter(struct cxl *adapter, struct pci_dev *dev)
{
 int rc;

 adapter->dev.parent = &dev->dev;
 adapter->dev.release = cxl_release_adapter;
 pci_set_drvdata(dev, adapter);

 rc = pci_enable_device(dev);
 if (rc) {
  dev_err(&dev->dev, "pci_enable_device failed: %i\n", rc);
  return rc;
 }

 if ((rc = cxl_read_vsec(adapter, dev)))
  return rc;

 if ((rc = cxl_vsec_looks_ok(adapter, dev)))
         return rc;

 cxl_fixup_malformed_tlp(adapter, dev);

 if ((rc = setup_cxl_bars(dev)))
  return rc;

 if ((rc = switch_card_to_cxl(dev)))
  return rc;

 if ((rc = cxl_update_image_control(adapter)))
  return rc;

 if ((rc = cxl_map_adapter_regs(adapter, dev)))
  return rc;

 if ((rc = sanitise_adapter_regs(adapter)))
  goto err;

 if ((rc = adapter->native->sl_ops->adapter_regs_init(adapter, dev)))
  goto err;


 pci_set_master(dev);

 adapter->tunneled_ops_supported = 0;

 if (cxl_is_power9()) {
  if (pnv_pci_set_tunnel_bar(dev, 0x00020000E0000000ull, 1))
   dev_info(&dev->dev, "Tunneled operations unsupported\n");
  else
   adapter->tunneled_ops_supported = 1;
 }

 if ((rc = pnv_phb_to_cxl_mode(dev, adapter->native->sl_ops->capi_mode)))
  goto err;



 if ((rc = pnv_phb_to_cxl_mode(dev, OPAL_PHB_CAPI_MODE_SNOOP_ON)))
  goto err;


 cxl_setup_psl_timebase(adapter, dev);

 if ((rc = cxl_native_register_psl_err_irq(adapter)))
  goto err;

 return 0;

err:
 cxl_unmap_adapter_regs(adapter);
 return rc;

}
