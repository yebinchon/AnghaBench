
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {int * pending; int * queued; int * active; int lock; } ;


 int __vsp1_dl_list_put (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vsp1_dlm_reset(struct vsp1_dl_manager *dlm)
{
 unsigned long flags;

 spin_lock_irqsave(&dlm->lock, flags);

 __vsp1_dl_list_put(dlm->active);
 __vsp1_dl_list_put(dlm->queued);
 __vsp1_dl_list_put(dlm->pending);

 spin_unlock_irqrestore(&dlm->lock, flags);

 dlm->active = ((void*)0);
 dlm->queued = ((void*)0);
 dlm->pending = ((void*)0);
}
