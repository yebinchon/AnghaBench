
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;


 scalar_t__ OCXL_DVSEC_AFU_CTRL_ENABLE ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int) ;

void ocxl_config_set_afu_state(struct pci_dev *dev, int pos, int enable)
{
 u8 val;

 pci_read_config_byte(dev, pos + OCXL_DVSEC_AFU_CTRL_ENABLE, &val);
 if (enable)
  val |= 1;
 else
  val &= 0xFE;
 pci_write_config_byte(dev, pos + OCXL_DVSEC_AFU_CTRL_ENABLE, val);
}
