
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {scalar_t__ id; int val; } ;
struct s5p_jpeg_ctx {TYPE_1__* jpeg; } ;
struct TYPE_2__ {int slock; } ;


 scalar_t__ V4L2_CID_JPEG_CHROMA_SUBSAMPLING ;
 struct s5p_jpeg_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int s5p_jpeg_adjust_subs_ctrl (struct s5p_jpeg_ctx*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s5p_jpeg_try_ctrl(struct v4l2_ctrl *ctrl)
{
 struct s5p_jpeg_ctx *ctx = ctrl_to_ctx(ctrl);
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&ctx->jpeg->slock, flags);

 if (ctrl->id == V4L2_CID_JPEG_CHROMA_SUBSAMPLING)
  ret = s5p_jpeg_adjust_subs_ctrl(ctx, &ctrl->val);

 spin_unlock_irqrestore(&ctx->jpeg->slock, flags);
 return ret;
}
