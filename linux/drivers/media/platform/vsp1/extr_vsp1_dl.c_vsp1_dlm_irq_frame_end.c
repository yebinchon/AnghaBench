
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vsp1_dl_manager {int lock; TYPE_1__* pending; TYPE_1__* queued; TYPE_1__* active; int index; scalar_t__ singleshot; struct vsp1_device* vsp1; } ;
struct vsp1_device {int dummy; } ;
struct TYPE_3__ {unsigned int flags; } ;


 int VI6_STATUS ;
 int VI6_STATUS_FLD_STD (int ) ;
 unsigned int VSP1_DL_FRAME_END_COMPLETED ;
 int VSP1_DL_FRAME_END_INTERNAL ;
 unsigned int VSP1_DL_FRAME_END_WRITEBACK ;
 int __vsp1_dl_list_put (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vsp1_dl_list_hw_enqueue (TYPE_1__*) ;
 scalar_t__ vsp1_dl_list_hw_update_pending (struct vsp1_dl_manager*) ;
 int vsp1_read (struct vsp1_device*,int ) ;

unsigned int vsp1_dlm_irq_frame_end(struct vsp1_dl_manager *dlm)
{
 struct vsp1_device *vsp1 = dlm->vsp1;
 u32 status = vsp1_read(vsp1, VI6_STATUS);
 unsigned int flags = 0;

 spin_lock(&dlm->lock);





 if (dlm->singleshot) {
  __vsp1_dl_list_put(dlm->active);
  dlm->active = ((void*)0);
  flags |= VSP1_DL_FRAME_END_COMPLETED;
  goto done;
 }







 if (vsp1_dl_list_hw_update_pending(dlm))
  goto done;






 if (status & VI6_STATUS_FLD_STD(dlm->index))
  goto done;







 if (dlm->active && (dlm->active->flags & VSP1_DL_FRAME_END_WRITEBACK)) {
  flags |= VSP1_DL_FRAME_END_WRITEBACK;
  dlm->active->flags &= ~VSP1_DL_FRAME_END_WRITEBACK;
 }





 if (dlm->queued) {
  if (dlm->queued->flags & VSP1_DL_FRAME_END_INTERNAL)
   flags |= VSP1_DL_FRAME_END_INTERNAL;
  dlm->queued->flags &= ~VSP1_DL_FRAME_END_INTERNAL;

  __vsp1_dl_list_put(dlm->active);
  dlm->active = dlm->queued;
  dlm->queued = ((void*)0);
  flags |= VSP1_DL_FRAME_END_COMPLETED;
 }






 if (dlm->pending) {
  vsp1_dl_list_hw_enqueue(dlm->pending);
  dlm->queued = dlm->pending;
  dlm->pending = ((void*)0);
 }

done:
 spin_unlock(&dlm->lock);

 return flags;
}
