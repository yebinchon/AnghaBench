
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_pipeline {int dummy; } ;
struct vsp1_lut {int lock; struct vsp1_dl_body* lut; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vsp1_lut* to_lut (int *) ;
 int vsp1_dl_body_put (struct vsp1_dl_body*) ;
 int vsp1_dl_list_add_body (struct vsp1_dl_list*,struct vsp1_dl_body*) ;

__attribute__((used)) static void lut_configure_frame(struct vsp1_entity *entity,
    struct vsp1_pipeline *pipe,
    struct vsp1_dl_list *dl,
    struct vsp1_dl_body *dlb)
{
 struct vsp1_lut *lut = to_lut(&entity->subdev);
 struct vsp1_dl_body *lut_dlb;
 unsigned long flags;

 spin_lock_irqsave(&lut->lock, flags);
 lut_dlb = lut->lut;
 lut->lut = ((void*)0);
 spin_unlock_irqrestore(&lut->lock, flags);

 if (lut_dlb) {
  vsp1_dl_list_add_body(dl, lut_dlb);


  vsp1_dl_body_put(lut_dlb);
 }
}
