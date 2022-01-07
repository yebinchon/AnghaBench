
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct mtk_enc_params {int force_intra; int gop_size; int intra_period; int h264_level; int h264_profile; int rc_mb; int seq_hdr_mode; int h264_max_qp; int rc_frame; int num_b_frame; int bitrate; } ;
struct mtk_vcodec_ctx {int param_change; struct mtk_enc_params enc_params; } ;


 int EINVAL ;
 int MTK_ENCODE_PARAM_BITRATE ;
 int MTK_ENCODE_PARAM_FORCE_INTRA ;
 int MTK_ENCODE_PARAM_GOP_SIZE ;
 int MTK_ENCODE_PARAM_INTRA_PERIOD ;
 struct mtk_vcodec_ctx* ctrl_to_ctx (struct v4l2_ctrl*) ;
 int mtk_v4l2_debug (int,char*,...) ;

__attribute__((used)) static int vidioc_venc_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct mtk_vcodec_ctx *ctx = ctrl_to_ctx(ctrl);
 struct mtk_enc_params *p = &ctx->enc_params;
 int ret = 0;

 switch (ctrl->id) {
 case 138:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_BITRATE val = %d",
          ctrl->val);
  p->bitrate = ctrl->val;
  ctx->param_change |= MTK_ENCODE_PARAM_BITRATE;
  break;
 case 137:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_B_FRAMES val = %d",
          ctrl->val);
  p->num_b_frame = ctrl->val;
  break;
 case 135:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_FRAME_RC_ENABLE val = %d",
          ctrl->val);
  p->rc_frame = ctrl->val;
  break;
 case 131:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_H264_MAX_QP val = %d",
          ctrl->val);
  p->h264_max_qp = ctrl->val;
  break;
 case 129:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_HEADER_MODE val = %d",
          ctrl->val);
  p->seq_hdr_mode = ctrl->val;
  break;
 case 128:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_MB_RC_ENABLE val = %d",
          ctrl->val);
  p->rc_mb = ctrl->val;
  break;
 case 130:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_H264_PROFILE val = %d",
          ctrl->val);
  p->h264_profile = ctrl->val;
  break;
 case 132:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_H264_LEVEL val = %d",
          ctrl->val);
  p->h264_level = ctrl->val;
  break;
 case 133:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_H264_I_PERIOD val = %d",
          ctrl->val);
  p->intra_period = ctrl->val;
  ctx->param_change |= MTK_ENCODE_PARAM_INTRA_PERIOD;
  break;
 case 134:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_GOP_SIZE val = %d",
          ctrl->val);
  p->gop_size = ctrl->val;
  ctx->param_change |= MTK_ENCODE_PARAM_GOP_SIZE;
  break;
 case 136:
  mtk_v4l2_debug(2, "V4L2_CID_MPEG_VIDEO_FORCE_KEY_FRAME");
  p->force_intra = 1;
  ctx->param_change |= MTK_ENCODE_PARAM_FORCE_INTRA;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
