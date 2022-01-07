
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int id; int val; } ;
struct s5p_jpeg_ctx {TYPE_1__* jpeg; int subsampling; int restart_interval; int compr_quality; } ;
struct TYPE_2__ {int slock; } ;





 struct s5p_jpeg_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s5p_jpeg_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct s5p_jpeg_ctx *ctx = ctrl_to_ctx(ctrl);
 unsigned long flags;

 spin_lock_irqsave(&ctx->jpeg->slock, flags);

 switch (ctrl->id) {
 case 129:
  ctx->compr_quality = ctrl->val;
  break;
 case 128:
  ctx->restart_interval = ctrl->val;
  break;
 case 130:
  ctx->subsampling = ctrl->val;
  break;
 }

 spin_unlock_irqrestore(&ctx->jpeg->slock, flags);
 return 0;
}
