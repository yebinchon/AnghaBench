
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_dl_manager {struct vsp1_dl_list* queued; struct vsp1_dl_list* pending; } ;
struct vsp1_dl_list {int flags; struct vsp1_dl_manager* dlm; } ;


 int VSP1_DL_FRAME_END_INTERNAL ;
 int WARN_ON (int ) ;
 int __vsp1_dl_list_put (struct vsp1_dl_list*) ;
 int vsp1_dl_list_hw_enqueue (struct vsp1_dl_list*) ;
 scalar_t__ vsp1_dl_list_hw_update_pending (struct vsp1_dl_manager*) ;

__attribute__((used)) static void vsp1_dl_list_commit_continuous(struct vsp1_dl_list *dl)
{
 struct vsp1_dl_manager *dlm = dl->dlm;
 if (vsp1_dl_list_hw_update_pending(dlm)) {
  WARN_ON(dlm->pending &&
   (dlm->pending->flags & VSP1_DL_FRAME_END_INTERNAL));
  __vsp1_dl_list_put(dlm->pending);
  dlm->pending = dl;
  return;
 }





 vsp1_dl_list_hw_enqueue(dl);

 __vsp1_dl_list_put(dlm->queued);
 dlm->queued = dl;
}
