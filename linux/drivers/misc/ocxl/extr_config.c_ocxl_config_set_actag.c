
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int OCXL_DVSEC_ACTAG_MASK ;
 scalar_t__ OCXL_DVSEC_FUNC_OFF_ACTAG ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

void ocxl_config_set_actag(struct pci_dev *dev, int func_dvsec, u32 tag_first,
   u32 tag_count)
{
 u32 val;

 val = (tag_first & OCXL_DVSEC_ACTAG_MASK) << 16;
 val |= tag_count & OCXL_DVSEC_ACTAG_MASK;
 pci_write_config_dword(dev, func_dvsec + OCXL_DVSEC_FUNC_OFF_ACTAG,
   val);
}
