
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_bus {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct TYPE_2__ {int (* afu_cr_write8 ) (struct cxl_afu*,int,int,int) ;int (* afu_cr_write16 ) (struct cxl_afu*,int,int,int) ;int (* afu_cr_write32 ) (struct cxl_afu*,int,int,int) ;} ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SET_FAILED ;
 int PCIBIOS_SUCCESSFUL ;
 int WARN_ON (int) ;
 int cxl_afu_configured_get (struct cxl_afu*) ;
 int cxl_afu_configured_put (struct cxl_afu*) ;
 TYPE_1__* cxl_ops ;
 int cxl_pcie_config_info (struct pci_bus*,unsigned int,struct cxl_afu*,int*) ;
 struct cxl_afu* pci_bus_to_afu (struct pci_bus*) ;
 int stub1 (struct cxl_afu*,int,int,int) ;
 int stub2 (struct cxl_afu*,int,int,int) ;
 int stub3 (struct cxl_afu*,int,int,int) ;

__attribute__((used)) static int cxl_pcie_write_config(struct pci_bus *bus, unsigned int devfn,
     int offset, int len, u32 val)
{
 int rc, record;
 struct cxl_afu *afu;

 afu = pci_bus_to_afu(bus);

 if (afu == ((void*)0) || !cxl_afu_configured_get(afu))
  return PCIBIOS_DEVICE_NOT_FOUND;

 rc = cxl_pcie_config_info(bus, devfn, afu, &record);
 if (rc)
  goto out;

 switch (len) {
 case 1:
  rc = cxl_ops->afu_cr_write8(afu, record, offset, val & 0xff);
  break;
 case 2:
  rc = cxl_ops->afu_cr_write16(afu, record, offset, val & 0xffff);
  break;
 case 4:
  rc = cxl_ops->afu_cr_write32(afu, record, offset, val);
  break;
 default:
  WARN_ON(1);
 }

out:
 cxl_afu_configured_put(afu);
 return rc ? PCIBIOS_SET_FAILED : PCIBIOS_SUCCESSFUL;
}
