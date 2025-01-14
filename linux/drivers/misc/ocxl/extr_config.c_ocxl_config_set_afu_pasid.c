
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ OCXL_DVSEC_AFU_CTRL_PASID_BASE ;
 scalar_t__ OCXL_DVSEC_AFU_CTRL_PASID_EN ;
 int OCXL_DVSEC_PASID_LOG_MASK ;
 int OCXL_DVSEC_PASID_MASK ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;

void ocxl_config_set_afu_pasid(struct pci_dev *dev, int pos, int pasid_base,
   u32 pasid_count_log)
{
 u8 val8;
 u32 val32;

 val8 = pasid_count_log & OCXL_DVSEC_PASID_LOG_MASK;
 pci_write_config_byte(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_EN, val8);

 pci_read_config_dword(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_BASE,
   &val32);
 val32 &= ~OCXL_DVSEC_PASID_MASK;
 val32 |= pasid_base & OCXL_DVSEC_PASID_MASK;
 pci_write_config_dword(dev, pos + OCXL_DVSEC_AFU_CTRL_PASID_BASE,
   val32);
}
