
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; int devfn; } ;


 scalar_t__ OCXL_DVSEC_VENDOR_CFG_VERS ;
 scalar_t__ OCXL_DVSEC_VENDOR_DLX_VERS ;
 int OCXL_DVSEC_VENDOR_ID ;
 scalar_t__ OCXL_DVSEC_VENDOR_TLX_VERS ;
 scalar_t__ PCI_FUNC (int ) ;
 int dev_dbg (int *,char*,...) ;
 int find_dvsec (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static int read_dvsec_vendor(struct pci_dev *dev)
{
 int pos;
 u32 cfg, tlx, dlx;
 if (PCI_FUNC(dev->devfn) != 0)
  return 0;

 pos = find_dvsec(dev, OCXL_DVSEC_VENDOR_ID);
 if (!pos)
  return 0;

 pci_read_config_dword(dev, pos + OCXL_DVSEC_VENDOR_CFG_VERS, &cfg);
 pci_read_config_dword(dev, pos + OCXL_DVSEC_VENDOR_TLX_VERS, &tlx);
 pci_read_config_dword(dev, pos + OCXL_DVSEC_VENDOR_DLX_VERS, &dlx);

 dev_dbg(&dev->dev, "Vendor specific DVSEC:\n");
 dev_dbg(&dev->dev, "  CFG version = 0x%x\n", cfg);
 dev_dbg(&dev->dev, "  TLX version = 0x%x\n", tlx);
 dev_dbg(&dev->dev, "  DLX version = 0x%x\n", dlx);
 return 0;
}
