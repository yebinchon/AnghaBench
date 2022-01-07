
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


typedef int u32 ;
struct v4l2_ctrl {int flags; int id; int val; } ;
struct mtk_mdp_variant {int dummy; } ;
struct mtk_mdp_dev {struct mtk_mdp_variant* variant; } ;
struct TYPE_9__ {int height; int width; } ;
struct TYPE_12__ {int alpha; TYPE_3__ crop; } ;
struct TYPE_11__ {TYPE_4__* rotate; } ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_8__ {TYPE_1__ crop; } ;
struct mtk_mdp_ctx {TYPE_6__ d_frame; int rotation; TYPE_5__ ctrls; TYPE_2__ s_frame; int vflip; int hflip; struct mtk_mdp_dev* mdp_dev; } ;
struct TYPE_10__ {int val; } ;


 int EINVAL ;
 int MTK_MDP_DST_FMT ;
 int MTK_MDP_SRC_FMT ;




 int V4L2_CTRL_FLAG_INACTIVE ;
 struct mtk_mdp_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int mtk_mdp_check_scaler_ratio (struct mtk_mdp_variant*,int ,int ,int ,int ,int ) ;
 int mtk_mdp_ctx_state_is_set (struct mtk_mdp_ctx*,int) ;

__attribute__((used)) static int mtk_mdp_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct mtk_mdp_ctx *ctx = ctrl_to_ctx(ctrl);
 struct mtk_mdp_dev *mdp = ctx->mdp_dev;
 struct mtk_mdp_variant *variant = mdp->variant;
 u32 state = MTK_MDP_DST_FMT | MTK_MDP_SRC_FMT;
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
  if (mtk_mdp_ctx_state_is_set(ctx, state)) {
   ret = mtk_mdp_check_scaler_ratio(variant,
     ctx->s_frame.crop.width,
     ctx->s_frame.crop.height,
     ctx->d_frame.crop.width,
     ctx->d_frame.crop.height,
     ctx->ctrls.rotate->val);

   if (ret)
    return -EINVAL;
  }

  ctx->rotation = ctrl->val;
  break;
 case 131:
  ctx->d_frame.alpha = ctrl->val;
  break;
 }

 return 0;
}
