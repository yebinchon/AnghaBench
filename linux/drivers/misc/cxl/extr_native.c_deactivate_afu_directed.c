
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cxl_afu {TYPE_3__* adapter; scalar_t__ num_procs; scalar_t__ current_mode; int dev; } ;
struct TYPE_8__ {int (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_7__ {TYPE_2__* native; } ;
struct TYPE_6__ {TYPE_1__* sl_ops; } ;
struct TYPE_5__ {scalar_t__ needs_reset_before_disable; } ;


 int cxl_afu_disable (struct cxl_afu*) ;
 int cxl_chardev_afu_remove (struct cxl_afu*) ;
 TYPE_4__* cxl_ops ;
 int cxl_psl_purge (struct cxl_afu*) ;
 int cxl_sysfs_afu_m_remove (struct cxl_afu*) ;
 int dev_info (int *,char*) ;
 int stub1 (struct cxl_afu*) ;

__attribute__((used)) static int deactivate_afu_directed(struct cxl_afu *afu)
{
 dev_info(&afu->dev, "Deactivating AFU directed mode\n");

 afu->current_mode = 0;
 afu->num_procs = 0;

 cxl_sysfs_afu_m_remove(afu);
 cxl_chardev_afu_remove(afu);
 if (afu->adapter->native->sl_ops->needs_reset_before_disable)
  cxl_ops->afu_reset(afu);
 cxl_afu_disable(afu);
 cxl_psl_purge(afu);

 return 0;
}
