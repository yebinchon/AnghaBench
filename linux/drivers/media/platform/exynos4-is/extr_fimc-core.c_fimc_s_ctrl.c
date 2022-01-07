
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int dummy; } ;
struct fimc_ctx {TYPE_1__* fimc_dev; } ;
struct TYPE_2__ {int slock; } ;


 int __fimc_s_ctrl (struct fimc_ctx*,struct v4l2_ctrl*) ;
 struct fimc_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fimc_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct fimc_ctx *ctx = ctrl_to_ctx(ctrl);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&ctx->fimc_dev->slock, flags);
 ret = __fimc_s_ctrl(ctx, ctrl);
 spin_unlock_irqrestore(&ctx->fimc_dev->slock, flags);

 return ret;
}
