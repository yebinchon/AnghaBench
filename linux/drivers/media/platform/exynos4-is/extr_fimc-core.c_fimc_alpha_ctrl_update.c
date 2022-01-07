
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ val; } ;
struct v4l2_ctrl {scalar_t__ maximum; TYPE_2__ cur; } ;
struct fimc_dev {TYPE_4__* drv_data; } ;
struct TYPE_5__ {int fmt; } ;
struct TYPE_7__ {struct v4l2_ctrl* alpha; } ;
struct fimc_ctx {TYPE_1__ d_frame; TYPE_3__ ctrls; struct fimc_dev* fimc_dev; } ;
struct TYPE_8__ {int alpha_color; } ;


 scalar_t__ fimc_get_alpha_mask (int ) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

void fimc_alpha_ctrl_update(struct fimc_ctx *ctx)
{
 struct fimc_dev *fimc = ctx->fimc_dev;
 struct v4l2_ctrl *ctrl = ctx->ctrls.alpha;

 if (ctrl == ((void*)0) || !fimc->drv_data->alpha_color)
  return;

 v4l2_ctrl_lock(ctrl);
 ctrl->maximum = fimc_get_alpha_mask(ctx->d_frame.fmt);

 if (ctrl->cur.val > ctrl->maximum)
  ctrl->cur.val = ctrl->maximum;

 v4l2_ctrl_unlock(ctrl);
}
