
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int max_pasid_log; } ;
struct ocxl_fn {scalar_t__ pasid_base; TYPE_2__ dev; TYPE_1__ config; } ;


 int ENOSPC ;
 int dev_err (TYPE_2__*,char*,int,int) ;
 int ocxl_config_get_pasid_info (struct pci_dev*,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int set_function_pasid(struct ocxl_fn *fn)
{
 struct pci_dev *dev = to_pci_dev(fn->dev.parent);
 int rc, desired_count, max_count;


 if (fn->config.max_pasid_log < 0)
  return 0;

 rc = ocxl_config_get_pasid_info(dev, &max_count);
 if (rc)
  return rc;

 desired_count = 1 << fn->config.max_pasid_log;

 if (desired_count > max_count) {
  dev_err(&fn->dev,
   "Function requires more PASIDs than is available (%d vs. %d)\n",
   desired_count, max_count);
  return -ENOSPC;
 }

 fn->pasid_base = 0;
 return 0;
}
