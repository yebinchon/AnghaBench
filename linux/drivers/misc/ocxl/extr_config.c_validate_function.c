
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ocxl_fn_config {int max_pasid_log; scalar_t__ max_afu_index; } ;


 int EINVAL ;
 scalar_t__ OCXL_MAX_AFU_PER_FUNCTION ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static int validate_function(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
 if (fn->max_pasid_log == -1 && fn->max_afu_index >= 0) {
  dev_err(&dev->dev,
   "AFUs are defined but no PASIDs are requested\n");
  return -EINVAL;
 }

 if (fn->max_afu_index > OCXL_MAX_AFU_PER_FUNCTION) {
  dev_err(&dev->dev,
   "Max AFU index out of architectural limit (%d vs %d)\n",
   fn->max_afu_index, OCXL_MAX_AFU_PER_FUNCTION);
  return -EINVAL;
 }
 return 0;
}
