
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ocxl_fn_config {scalar_t__ max_afu_index; int dvsec_afu_info_pos; } ;


 int ENODEV ;
 int OCXL_DVSEC_AFU_INFO_ID ;
 int dev_err (int *,char*) ;
 int find_dvsec (struct pci_dev*,int ) ;

__attribute__((used)) static int read_dvsec_afu_info(struct pci_dev *dev, struct ocxl_fn_config *fn)
{
 int pos;

 if (fn->max_afu_index < 0) {
  fn->dvsec_afu_info_pos = -1;
  return 0;
 }

 pos = find_dvsec(dev, OCXL_DVSEC_AFU_INFO_ID);
 if (!pos) {
  dev_err(&dev->dev, "Can't find AFU information DVSEC\n");
  return -ENODEV;
 }
 fn->dvsec_afu_info_pos = pos;
 return 0;
}
