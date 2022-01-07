
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct ocxl_fn_config {int dvsec_function_pos; int max_afu_index; } ;


 int ENODEV ;
 int EXTRACT_BIT (int ,int) ;
 int EXTRACT_BITS (int ,int,int) ;
 int OCXL_DVSEC_FUNC_ID ;
 scalar_t__ OCXL_DVSEC_FUNC_OFF_INDEX ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int find_dvsec (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static int read_dvsec_function(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
 int pos, afu_present;
 u32 val;

 pos = find_dvsec(dev, OCXL_DVSEC_FUNC_ID);
 if (!pos) {
  dev_err(&dev->dev, "Can't find function DVSEC\n");
  return -ENODEV;
 }
 fn->dvsec_function_pos = pos;

 pci_read_config_dword(dev, pos + OCXL_DVSEC_FUNC_OFF_INDEX, &val);
 afu_present = EXTRACT_BIT(val, 31);
 if (!afu_present) {
  fn->max_afu_index = -1;
  dev_dbg(&dev->dev, "Function doesn't define any AFU\n");
  goto out;
 }
 fn->max_afu_index = EXTRACT_BITS(val, 24, 29);

out:
 dev_dbg(&dev->dev, "Function DVSEC:\n");
 dev_dbg(&dev->dev, "  Max AFU index = %d\n", fn->max_afu_index);
 return 0;
}
