
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cxl_afu {size_t slice; int dev; int current_mode; TYPE_1__* adapter; TYPE_2__* guest; } ;
struct TYPE_6__ {int (* afu_deactivate_mode ) (struct cxl_afu*,int ) ;} ;
struct TYPE_5__ {int handle_err; int work_err; } ;
struct TYPE_4__ {int afu_list_lock; int ** afu; } ;


 int cxl_context_detach_all (struct cxl_afu*) ;
 TYPE_3__* cxl_ops ;
 int cxl_pci_vphb_remove (struct cxl_afu*) ;
 int cxl_sysfs_afu_remove (struct cxl_afu*) ;
 int device_unregister (int *) ;
 int flush_delayed_work (int *) ;
 int guest_release_serr_irq (struct cxl_afu*) ;
 int guest_unmap_slice_regs (struct cxl_afu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cxl_afu*,int ) ;

void cxl_guest_remove_afu(struct cxl_afu *afu)
{
 if (!afu)
  return;


 afu->guest->handle_err = 0;
 flush_delayed_work(&afu->guest->work_err);

 cxl_pci_vphb_remove(afu);
 cxl_sysfs_afu_remove(afu);

 spin_lock(&afu->adapter->afu_list_lock);
 afu->adapter->afu[afu->slice] = ((void*)0);
 spin_unlock(&afu->adapter->afu_list_lock);

 cxl_context_detach_all(afu);
 cxl_ops->afu_deactivate_mode(afu, afu->current_mode);
 guest_release_serr_irq(afu);
 guest_unmap_slice_regs(afu);

 device_unregister(&afu->dev);
}
