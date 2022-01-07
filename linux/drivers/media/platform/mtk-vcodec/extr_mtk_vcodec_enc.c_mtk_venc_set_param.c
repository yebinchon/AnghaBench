
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venc_enc_param {int frm_rate; int intra_period; int gop_size; int bitrate; int buf_height; int buf_width; int height; int width; int h264_level; int h264_profile; int input_yuv_fmt; } ;
struct mtk_enc_params {int framerate_num; int framerate_denom; int bitrate; int gop_size; int intra_period; int h264_level; int h264_profile; } ;
struct mtk_vcodec_ctx {struct mtk_enc_params enc_params; struct mtk_q_data* q_data; } ;
struct mtk_q_data {int coded_height; int coded_width; int visible_height; int visible_width; TYPE_1__* fmt; } ;
struct TYPE_2__ {int fourcc; } ;


 size_t MTK_Q_DATA_SRC ;




 int VENC_YUV_FORMAT_I420 ;
 int VENC_YUV_FORMAT_NV12 ;
 int VENC_YUV_FORMAT_NV21 ;
 int VENC_YUV_FORMAT_YV12 ;
 int mtk_v4l2_debug (int ,char*,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ) ;
 int mtk_v4l2_err (char*,int) ;

__attribute__((used)) static void mtk_venc_set_param(struct mtk_vcodec_ctx *ctx,
    struct venc_enc_param *param)
{
 struct mtk_q_data *q_data_src = &ctx->q_data[MTK_Q_DATA_SRC];
 struct mtk_enc_params *enc_params = &ctx->enc_params;

 switch (q_data_src->fmt->fourcc) {
 case 129:
  param->input_yuv_fmt = VENC_YUV_FORMAT_I420;
  break;
 case 128:
  param->input_yuv_fmt = VENC_YUV_FORMAT_YV12;
  break;
 case 131:
  param->input_yuv_fmt = VENC_YUV_FORMAT_NV12;
  break;
 case 130:
  param->input_yuv_fmt = VENC_YUV_FORMAT_NV21;
  break;
 default:
  mtk_v4l2_err("Unsupported fourcc =%d", q_data_src->fmt->fourcc);
  break;
 }
 param->h264_profile = enc_params->h264_profile;
 param->h264_level = enc_params->h264_level;


 param->width = q_data_src->visible_width;
 param->height = q_data_src->visible_height;

 param->buf_width = q_data_src->coded_width;
 param->buf_height = q_data_src->coded_height;
 param->frm_rate = enc_params->framerate_num /
   enc_params->framerate_denom;
 param->intra_period = enc_params->intra_period;
 param->gop_size = enc_params->gop_size;
 param->bitrate = enc_params->bitrate;

 mtk_v4l2_debug(0,
  "fmt 0x%x, P/L %d/%d, w/h %d/%d, buf %d/%d, fps/bps %d/%d, gop %d, i_period %d",
  param->input_yuv_fmt, param->h264_profile,
  param->h264_level, param->width, param->height,
  param->buf_width, param->buf_height,
  param->frm_rate, param->bitrate,
  param->gop_size, param->intra_period);
}
