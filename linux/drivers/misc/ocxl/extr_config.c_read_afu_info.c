
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct ocxl_fn_config {int dvsec_afu_info_pos; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ EXTRACT_BIT (int,int) ;
 unsigned long HZ ;
 unsigned long OCXL_CFG_TIMEOUT ;
 scalar_t__ OCXL_DVSEC_AFU_INFO_DATA ;
 scalar_t__ OCXL_DVSEC_AFU_INFO_OFF ;
 int cpu_relax () ;
 int dev_err (int *,char*,...) ;
 unsigned long jiffies ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static int read_afu_info(struct pci_dev *dev, struct ocxl_fn_config *fn,
   int offset, u32 *data)
{
 u32 val;
 unsigned long timeout = jiffies + (HZ * OCXL_CFG_TIMEOUT);
 int pos = fn->dvsec_afu_info_pos;


 if (EXTRACT_BIT(offset, 31)) {
  dev_err(&dev->dev, "Invalid offset in AFU info DVSEC\n");
  return -EINVAL;
 }

 pci_write_config_dword(dev, pos + OCXL_DVSEC_AFU_INFO_OFF, offset);
 pci_read_config_dword(dev, pos + OCXL_DVSEC_AFU_INFO_OFF, &val);
 while (!EXTRACT_BIT(val, 31)) {
  if (time_after_eq(jiffies, timeout)) {
   dev_err(&dev->dev,
    "Timeout while reading AFU info DVSEC (offset=%d)\n",
    offset);
   return -EBUSY;
  }
  cpu_relax();
  pci_read_config_dword(dev, pos + OCXL_DVSEC_AFU_INFO_OFF, &val);
 }
 pci_read_config_dword(dev, pos + OCXL_DVSEC_AFU_INFO_DATA, data);
 return 0;
}
