
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct mtk_vcodec_ctx {int dpb_size; int state; } ;


 int EINVAL ;
 int MTK_STATE_HEADER ;

 struct mtk_vcodec_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int mtk_v4l2_debug (int ,char*) ;

__attribute__((used)) static int mtk_vdec_g_v_ctrl(struct v4l2_ctrl *ctrl)
{
 struct mtk_vcodec_ctx *ctx = ctrl_to_ctx(ctrl);
 int ret = 0;

 switch (ctrl->id) {
 case 128:
  if (ctx->state >= MTK_STATE_HEADER) {
   ctrl->val = ctx->dpb_size;
  } else {
   mtk_v4l2_debug(0, "Seqinfo not ready");
   ctrl->val = 0;
  }
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
