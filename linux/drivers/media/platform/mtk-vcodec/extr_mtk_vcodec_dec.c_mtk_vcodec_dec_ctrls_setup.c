
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_ctrl {int flags; } ;
struct TYPE_5__ {int error; } ;
struct mtk_vcodec_ctx {TYPE_1__ ctrl_hdl; } ;


 int V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ;
 int V4L2_CID_MPEG_VIDEO_VP9_PROFILE ;
 int V4L2_CTRL_FLAG_VOLATILE ;
 int V4L2_MPEG_VIDEO_VP9_PROFILE_0 ;
 int mtk_v4l2_err (char*,int) ;
 int mtk_vcodec_dec_ctrl_ops ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,int,int,int) ;
 int v4l2_ctrl_new_std_menu (TYPE_1__*,int *,int ,int ,int ,int ) ;

int mtk_vcodec_dec_ctrls_setup(struct mtk_vcodec_ctx *ctx)
{
 struct v4l2_ctrl *ctrl;

 v4l2_ctrl_handler_init(&ctx->ctrl_hdl, 1);

 ctrl = v4l2_ctrl_new_std(&ctx->ctrl_hdl,
    &mtk_vcodec_dec_ctrl_ops,
    V4L2_CID_MIN_BUFFERS_FOR_CAPTURE,
    0, 32, 1, 1);
 ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
 v4l2_ctrl_new_std_menu(&ctx->ctrl_hdl,
    &mtk_vcodec_dec_ctrl_ops,
    V4L2_CID_MPEG_VIDEO_VP9_PROFILE,
    V4L2_MPEG_VIDEO_VP9_PROFILE_0,
    0, V4L2_MPEG_VIDEO_VP9_PROFILE_0);

 if (ctx->ctrl_hdl.error) {
  mtk_v4l2_err("Adding control failed %d",
    ctx->ctrl_hdl.error);
  return ctx->ctrl_hdl.error;
 }

 v4l2_ctrl_handler_setup(&ctx->ctrl_hdl);
 return 0;
}
