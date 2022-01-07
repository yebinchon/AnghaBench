
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {int modes_supported; int dev; } ;
struct TYPE_2__ {int (* afu_activate_mode ) (struct cxl_afu*,int) ;} ;


 int CXL_MODE_DEDICATED ;
 int CXL_MODE_DIRECTED ;
 TYPE_1__* cxl_ops ;
 int dev_warn (int *,char*) ;
 int stub1 (struct cxl_afu*,int) ;
 int stub2 (struct cxl_afu*,int) ;

int cxl_afu_select_best_mode(struct cxl_afu *afu)
{
 if (afu->modes_supported & CXL_MODE_DIRECTED)
  return cxl_ops->afu_activate_mode(afu, CXL_MODE_DIRECTED);

 if (afu->modes_supported & CXL_MODE_DEDICATED)
  return cxl_ops->afu_activate_mode(afu, CXL_MODE_DEDICATED);

 dev_warn(&afu->dev, "No supported programming modes available\n");

 return 0;
}
