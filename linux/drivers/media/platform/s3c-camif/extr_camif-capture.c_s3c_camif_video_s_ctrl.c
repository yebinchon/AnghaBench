
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; int name; struct camif_vp* priv; } ;
struct camif_vp {int state; int vflip; int hflip; int id; struct camif_dev* camif; } ;
struct camif_dev {int slock; } ;


 int ST_VP_CONFIG ;


 int pr_debug (char*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s3c_camif_video_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct camif_vp *vp = ctrl->priv;
 struct camif_dev *camif = vp->camif;
 unsigned long flags;

 pr_debug("[vp%d] ctrl: %s, value: %d\n", vp->id,
   ctrl->name, ctrl->val);

 spin_lock_irqsave(&camif->slock, flags);

 switch (ctrl->id) {
 case 129:
  vp->hflip = ctrl->val;
  break;

 case 128:
  vp->vflip = ctrl->val;
  break;
 }

 vp->state |= ST_VP_CONFIG;
 spin_unlock_irqrestore(&camif->slock, flags);
 return 0;
}
