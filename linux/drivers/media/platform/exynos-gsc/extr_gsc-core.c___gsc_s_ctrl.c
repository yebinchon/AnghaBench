
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_ctrl {int flags; int id; int val; } ;
struct gsc_variant {int dummy; } ;
struct gsc_dev {struct gsc_variant* variant; } ;
struct TYPE_9__ {int height; int width; } ;
struct TYPE_12__ {int alpha; TYPE_3__ crop; } ;
struct TYPE_11__ {TYPE_4__* rotate; } ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_8__ {TYPE_1__ crop; } ;
struct gsc_ctx {unsigned int state; TYPE_6__ d_frame; int rotation; int out_path; TYPE_5__ gsc_ctrls; TYPE_2__ s_frame; int vflip; int hflip; struct gsc_dev* gsc_dev; } ;
struct TYPE_10__ {int val; } ;


 int EINVAL ;
 unsigned int GSC_DST_FMT ;
 unsigned int GSC_PARAMS ;
 unsigned int GSC_SRC_FMT ;




 int V4L2_CTRL_FLAG_INACTIVE ;
 int gsc_check_scaler_ratio (struct gsc_variant*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int __gsc_s_ctrl(struct gsc_ctx *ctx, struct v4l2_ctrl *ctrl)
{
 struct gsc_dev *gsc = ctx->gsc_dev;
 struct gsc_variant *variant = gsc->variant;
 unsigned int flags = GSC_DST_FMT | GSC_SRC_FMT;
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
  if ((ctx->state & flags) == flags) {
   ret = gsc_check_scaler_ratio(variant,
     ctx->s_frame.crop.width,
     ctx->s_frame.crop.height,
     ctx->d_frame.crop.width,
     ctx->d_frame.crop.height,
     ctx->gsc_ctrls.rotate->val,
     ctx->out_path);

   if (ret)
    return -EINVAL;
  }

  ctx->rotation = ctrl->val;
  break;

 case 131:
  ctx->d_frame.alpha = ctrl->val;
  break;
 }

 ctx->state |= GSC_PARAMS;
 return 0;
}
