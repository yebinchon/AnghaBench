
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct vsp1_clu {scalar_t__ mode; int lock; struct vsp1_dl_body* clu; scalar_t__ yuv_mode; } ;


 scalar_t__ V4L2_CID_VSP1_CLU_MODE_2D ;
 int VI6_CLU_CTRL ;
 int VI6_CLU_CTRL_AAI ;
 int VI6_CLU_CTRL_AX1I_2D ;
 int VI6_CLU_CTRL_AX2I_2D ;
 int VI6_CLU_CTRL_EN ;
 int VI6_CLU_CTRL_M2D ;
 int VI6_CLU_CTRL_MVS ;
 int VI6_CLU_CTRL_OS0_2D ;
 int VI6_CLU_CTRL_OS1_2D ;
 int VI6_CLU_CTRL_OS2_2D ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vsp1_clu* to_clu (int *) ;
 int vsp1_clu_write (struct vsp1_clu*,struct vsp1_dl_body*,int ,int) ;
 int vsp1_dl_body_put (struct vsp1_dl_body*) ;
 int vsp1_dl_list_add_body (struct vsp1_dl_list*,struct vsp1_dl_body*) ;

__attribute__((used)) static void clu_configure_frame(struct vsp1_entity *entity,
    struct vsp1_pipeline *pipe,
    struct vsp1_dl_list *dl,
    struct vsp1_dl_body *dlb)
{
 struct vsp1_clu *clu = to_clu(&entity->subdev);
 struct vsp1_dl_body *clu_dlb;
 unsigned long flags;
 u32 ctrl = VI6_CLU_CTRL_AAI | VI6_CLU_CTRL_MVS | VI6_CLU_CTRL_EN;


 if (clu->mode == V4L2_CID_VSP1_CLU_MODE_2D && clu->yuv_mode)
  ctrl |= VI6_CLU_CTRL_AX1I_2D | VI6_CLU_CTRL_AX2I_2D
       | VI6_CLU_CTRL_OS0_2D | VI6_CLU_CTRL_OS1_2D
       | VI6_CLU_CTRL_OS2_2D | VI6_CLU_CTRL_M2D;

 vsp1_clu_write(clu, dlb, VI6_CLU_CTRL, ctrl);

 spin_lock_irqsave(&clu->lock, flags);
 clu_dlb = clu->clu;
 clu->clu = ((void*)0);
 spin_unlock_irqrestore(&clu->lock, flags);

 if (clu_dlb) {
  vsp1_dl_list_add_body(dl, clu_dlb);


  vsp1_dl_body_put(clu_dlb);
 }
}
