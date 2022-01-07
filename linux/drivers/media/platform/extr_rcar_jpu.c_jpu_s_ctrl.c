
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {scalar_t__ id; int val; } ;
struct jpu_ctx {TYPE_1__* jpu; int compr_quality; } ;
struct TYPE_2__ {int lock; } ;


 scalar_t__ V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 struct jpu_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int jpu_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct jpu_ctx *ctx = ctrl_to_ctx(ctrl);
 unsigned long flags;

 spin_lock_irqsave(&ctx->jpu->lock, flags);
 if (ctrl->id == V4L2_CID_JPEG_COMPRESSION_QUALITY)
  ctx->compr_quality = ctrl->val;
 spin_unlock_irqrestore(&ctx->jpu->lock, flags);

 return 0;
}
