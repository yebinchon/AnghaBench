
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl {int flags; int id; int val; } ;
struct fimc_variant {int has_out_rot; } ;
struct fimc_dev {int state; struct fimc_variant* variant; } ;
struct TYPE_4__ {int alpha; int height; int width; } ;
struct TYPE_3__ {int height; int width; } ;
struct fimc_ctx {int hflip; int vflip; int rotation; int state; TYPE_2__ d_frame; TYPE_1__ s_frame; struct fimc_dev* fimc_dev; } ;


 int EINVAL ;
 int FIMC_PARAMS ;
 int ST_CAPT_APPLY_CFG ;





 int V4L2_CTRL_FLAG_INACTIVE ;
 int fimc_capture_pending (struct fimc_dev*) ;
 int fimc_check_scaler_ratio (struct fimc_ctx*,int ,int ,int ,int ,int) ;
 int fimc_set_color_effect (struct fimc_ctx*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int __fimc_s_ctrl(struct fimc_ctx *ctx, struct v4l2_ctrl *ctrl)
{
 struct fimc_dev *fimc = ctx->fimc_dev;
 const struct fimc_variant *variant = fimc->variant;
 int ret = 0;

 if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE)
  return 0;

 switch (ctrl->id) {
 case 130:
  ctx->hflip = ctrl->val;
  break;

 case 128:
  ctx->vflip = ctrl->val;
  break;

 case 129:
  if (fimc_capture_pending(fimc)) {
   ret = fimc_check_scaler_ratio(ctx, ctx->s_frame.width,
     ctx->s_frame.height, ctx->d_frame.width,
     ctx->d_frame.height, ctrl->val);
   if (ret)
    return -EINVAL;
  }
  if ((ctrl->val == 90 || ctrl->val == 270) &&
      !variant->has_out_rot)
   return -EINVAL;

  ctx->rotation = ctrl->val;
  break;

 case 132:
  ctx->d_frame.alpha = ctrl->val;
  break;

 case 131:
  ret = fimc_set_color_effect(ctx, ctrl->val);
  if (ret)
   return ret;
  break;
 }

 ctx->state |= FIMC_PARAMS;
 set_bit(ST_CAPT_APPLY_CFG, &fimc->state);
 return 0;
}
