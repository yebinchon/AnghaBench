
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct mtk_vcodec_ctx {struct v4l2_ctrl_handler ctrl_hdl; } ;


 int MTK_MAX_CTRLS_HINT ;
 int V4L2_CID_MPEG_VIDEO_BITRATE ;
 int V4L2_CID_MPEG_VIDEO_B_FRAMES ;
 int V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME ;
 int V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE ;
 int V4L2_CID_MPEG_VIDEO_GOP_SIZE ;
 int V4L2_CID_MPEG_VIDEO_H264_I_PERIOD ;
 int V4L2_CID_MPEG_VIDEO_H264_LEVEL ;
 int V4L2_CID_MPEG_VIDEO_H264_MAX_QP ;
 int V4L2_CID_MPEG_VIDEO_H264_PROFILE ;
 int V4L2_CID_MPEG_VIDEO_HEADER_MODE ;
 int V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_4_0 ;
 int V4L2_MPEG_VIDEO_H264_LEVEL_4_2 ;
 int V4L2_MPEG_VIDEO_H264_PROFILE_HIGH ;
 int V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME ;
 int V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE ;
 int mtk_v4l2_err (char*,int) ;
 struct v4l2_ctrl_ops mtk_vcodec_enc_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int ) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int,int) ;
 int v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int ,int ,int ) ;

int mtk_vcodec_enc_ctrls_setup(struct mtk_vcodec_ctx *ctx)
{
 const struct v4l2_ctrl_ops *ops = &mtk_vcodec_enc_ctrl_ops;
 struct v4l2_ctrl_handler *handler = &ctx->ctrl_hdl;

 v4l2_ctrl_handler_init(handler, MTK_MAX_CTRLS_HINT);

 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_BITRATE,
   1, 4000000, 1, 4000000);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_B_FRAMES,
   0, 2, 1, 0);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE,
   0, 1, 1, 1);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_H264_MAX_QP,
   0, 51, 1, 51);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_H264_I_PERIOD,
   0, 65535, 1, 0);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_GOP_SIZE,
   0, 65535, 1, 0);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE,
   0, 1, 1, 0);
 v4l2_ctrl_new_std(handler, ops, V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME,
   0, 0, 0, 0);
 v4l2_ctrl_new_std_menu(handler, ops,
   V4L2_CID_MPEG_VIDEO_HEADER_MODE,
   V4L2_MPEG_VIDEO_HEADER_MODE_JOINED_WITH_1ST_FRAME,
   0, V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE);
 v4l2_ctrl_new_std_menu(handler, ops, V4L2_CID_MPEG_VIDEO_H264_PROFILE,
   V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
   0, V4L2_MPEG_VIDEO_H264_PROFILE_HIGH);
 v4l2_ctrl_new_std_menu(handler, ops, V4L2_CID_MPEG_VIDEO_H264_LEVEL,
   V4L2_MPEG_VIDEO_H264_LEVEL_4_2,
   0, V4L2_MPEG_VIDEO_H264_LEVEL_4_0);
 if (handler->error) {
  mtk_v4l2_err("Init control handler fail %d",
    handler->error);
  return handler->error;
 }

 v4l2_ctrl_handler_setup(&ctx->ctrl_hdl);

 return 0;
}
