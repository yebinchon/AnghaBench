
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dummy; } ;


 int OCXL_DVSEC_ACTAG_MASK ;
 scalar_t__ OCXL_DVSEC_AFU_CTRL_ACTAG_BASE ;
 scalar_t__ OCXL_DVSEC_AFU_CTRL_ACTAG_EN ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

void ocxl_config_set_afu_actag(struct pci_dev *dev, int pos, int actag_base,
   int actag_count)
{
 u16 val;

 val = actag_count & OCXL_DVSEC_ACTAG_MASK;
 pci_write_config_byte(dev, pos + OCXL_DVSEC_AFU_CTRL_ACTAG_EN, val);

 val = actag_base & OCXL_DVSEC_ACTAG_MASK;
 pci_write_config_dword(dev, pos + OCXL_DVSEC_AFU_CTRL_ACTAG_BASE, val);
}
