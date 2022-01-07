
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct s5p_jpeg_ctx {struct s5p_jpeg* jpeg; } ;
struct s5p_jpeg {int slock; } ;



 struct s5p_jpeg_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int s5p_jpeg_to_user_subsampling (struct s5p_jpeg_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s5p_jpeg_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct s5p_jpeg_ctx *ctx = ctrl_to_ctx(ctrl);
 struct s5p_jpeg *jpeg = ctx->jpeg;
 unsigned long flags;

 switch (ctrl->id) {
 case 128:
  spin_lock_irqsave(&jpeg->slock, flags);
  ctrl->val = s5p_jpeg_to_user_subsampling(ctx);
  spin_unlock_irqrestore(&jpeg->slock, flags);
  break;
 }

 return 0;
}
