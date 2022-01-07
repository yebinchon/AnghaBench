
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int flags; int id; int val; } ;
struct bdisp_ctx {int state; TYPE_1__* bdisp_dev; int vflip; int hflip; } ;
struct TYPE_2__ {int dev; } ;


 int BDISP_PARAMS ;
 int EINVAL ;


 int V4L2_CTRL_FLAG_INACTIVE ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int __bdisp_s_ctrl(struct bdisp_ctx *ctx, struct v4l2_ctrl *ctrl)
{
 if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE)
  return 0;

 switch (ctrl->id) {
 case 129:
  ctx->hflip = ctrl->val;
  break;
 case 128:
  ctx->vflip = ctrl->val;
  break;
 default:
  dev_err(ctx->bdisp_dev->dev, "unknown control %d\n", ctrl->id);
  return -EINVAL;
 }

 ctx->state |= BDISP_PARAMS;

 return 0;
}
