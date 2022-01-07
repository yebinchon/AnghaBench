
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ max_afu_index; } ;
struct ocxl_fn {TYPE_1__ config; } ;


 int ENODEV ;
 struct ocxl_fn* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct ocxl_fn*) ;
 scalar_t__ PTR_ERR (struct ocxl_fn*) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int init_afu (struct pci_dev*,struct ocxl_fn*,scalar_t__) ;
 struct ocxl_fn* init_function (struct pci_dev*) ;
 int ocxl_config_check_afu_index (struct pci_dev*,TYPE_1__*,scalar_t__) ;
 int radix_enabled () ;

struct ocxl_fn *ocxl_function_open(struct pci_dev *dev)
{
 int rc, afu_count = 0;
 u8 afu;
 struct ocxl_fn *fn;

 if (!radix_enabled()) {
  dev_err(&dev->dev, "Unsupported memory model (hash)\n");
  return ERR_PTR(-ENODEV);
 }

 fn = init_function(dev);
 if (IS_ERR(fn)) {
  dev_err(&dev->dev, "function init failed: %li\n",
   PTR_ERR(fn));
  return fn;
 }

 for (afu = 0; afu <= fn->config.max_afu_index; afu++) {
  rc = ocxl_config_check_afu_index(dev, &fn->config, afu);
  if (rc > 0) {
   rc = init_afu(dev, fn, afu);
   if (rc) {
    dev_err(&dev->dev,
     "Can't initialize AFU index %d\n", afu);
    continue;
   }
   afu_count++;
  }
 }
 dev_info(&dev->dev, "%d AFU(s) configured\n", afu_count);
 return fn;
}
