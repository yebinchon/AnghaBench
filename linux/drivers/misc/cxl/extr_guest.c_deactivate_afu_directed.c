
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {scalar_t__ num_procs; scalar_t__ current_mode; int slice; int dev; } ;
struct TYPE_2__ {int (* afu_reset ) (struct cxl_afu*) ;} ;


 int cxl_chardev_afu_remove (struct cxl_afu*) ;
 TYPE_1__* cxl_ops ;
 int cxl_sysfs_afu_m_remove (struct cxl_afu*) ;
 int dev_info (int *,char*,int ) ;
 int stub1 (struct cxl_afu*) ;

__attribute__((used)) static int deactivate_afu_directed(struct cxl_afu *afu)
{
 dev_info(&afu->dev, "Deactivating AFU(%d) directed mode\n", afu->slice);

 afu->current_mode = 0;
 afu->num_procs = 0;

 cxl_sysfs_afu_m_remove(afu);
 cxl_chardev_afu_remove(afu);

 cxl_ops->afu_reset(afu);

 return 0;
}
