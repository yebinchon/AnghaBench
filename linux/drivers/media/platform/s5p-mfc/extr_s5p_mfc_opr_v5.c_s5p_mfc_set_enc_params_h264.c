
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_h264_enc_params {int level; unsigned int profile; unsigned int interlace; unsigned int loop_filter_mode; int loop_filter_alpha; int loop_filter_beta; scalar_t__ entropy_mode; int num_ref_pic_4p; unsigned int max_ref_pic; unsigned int _8x8_transform; unsigned int rc_frame_qp; int rc_max_qp; unsigned int rc_min_qp; int rc_mb_dark; int rc_mb_smooth; int rc_mb_static; unsigned int rc_mb_activity; int rc_b_frame_qp; int rc_p_frame_qp; int vui_sar; unsigned int vui_sar_idc; int vui_ext_sar_width; unsigned int vui_ext_sar_height; int open_gop; unsigned int open_gop_size; int cpb_size; } ;
struct TYPE_2__ {struct s5p_mfc_h264_enc_params h264; } ;
struct s5p_mfc_enc_params {int num_b_frame; int rc_mb; int rc_framerate_denom; int rc_framerate_num; scalar_t__ frame_skip_mode; scalar_t__ rc_frame; TYPE_1__ codec; } ;
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {int img_height; struct s5p_mfc_enc_params enc_params; struct s5p_mfc_dev* dev; } ;


 int EXTENDED_SAR ;
 int EXT_ENC_CONTROL ;
 int H264_I_PERIOD ;
 int P_B_FRAME_QP ;
 int S5P_FIMV_ENC_ALPHA_OFF ;
 int S5P_FIMV_ENC_BETA_OFF ;
 int S5P_FIMV_ENC_H264_ENTROPY_MODE ;
 int S5P_FIMV_ENC_H264_NUM_OF_REF ;
 int S5P_FIMV_ENC_H264_TRANS_FLAG ;
 int S5P_FIMV_ENC_LF_CTRL ;
 int S5P_FIMV_ENC_PIC_STRUCT ;
 int S5P_FIMV_ENC_PIC_TYPE_CTRL ;
 int S5P_FIMV_ENC_PROFILE ;
 int S5P_FIMV_ENC_RC_CONFIG ;
 int S5P_FIMV_ENC_RC_FRAME_RATE ;
 int S5P_FIMV_ENC_RC_MB_CTRL ;
 int S5P_FIMV_ENC_RC_QBOUND ;
 int S5P_FIMV_ENC_VSIZE_PX ;
 int SAMPLE_ASPECT_RATIO_IDC ;
 scalar_t__ V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT ;
 scalar_t__ V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC ;
 unsigned int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,unsigned int,int ) ;
 unsigned int s5p_mfc_read_info_v5 (struct s5p_mfc_ctx*,int ) ;
 int s5p_mfc_set_enc_params (struct s5p_mfc_ctx*) ;
 int s5p_mfc_write_info_v5 (struct s5p_mfc_ctx*,unsigned int,int ) ;

__attribute__((used)) static int s5p_mfc_set_enc_params_h264(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_enc_params *p = &ctx->enc_params;
 struct s5p_mfc_h264_enc_params *p_264 = &p->codec.h264;
 unsigned int reg;
 unsigned int shm;

 s5p_mfc_set_enc_params(ctx);

 reg = mfc_read(dev, S5P_FIMV_ENC_PIC_TYPE_CTRL);

 reg &= ~(0x3 << 16);
 reg |= (p->num_b_frame << 16);
 mfc_write(dev, reg, S5P_FIMV_ENC_PIC_TYPE_CTRL);

 reg = mfc_read(dev, S5P_FIMV_ENC_PROFILE);

 reg &= ~(0xFF << 8);
 reg |= (p_264->level << 8);

 reg &= ~(0x3F);
 reg |= p_264->profile;
 mfc_write(dev, reg, S5P_FIMV_ENC_PROFILE);

 mfc_write(dev, p_264->interlace, S5P_FIMV_ENC_PIC_STRUCT);

 if (p_264->interlace)
  mfc_write(dev, ctx->img_height >> 1, S5P_FIMV_ENC_VSIZE_PX);

 mfc_write(dev, p_264->loop_filter_mode, S5P_FIMV_ENC_LF_CTRL);

 if (p_264->loop_filter_alpha < 0) {
  reg = 0x10;
  reg |= (0xFF - p_264->loop_filter_alpha) + 1;
 } else {
  reg = 0x00;
  reg |= (p_264->loop_filter_alpha & 0xF);
 }
 mfc_write(dev, reg, S5P_FIMV_ENC_ALPHA_OFF);

 if (p_264->loop_filter_beta < 0) {
  reg = 0x10;
  reg |= (0xFF - p_264->loop_filter_beta) + 1;
 } else {
  reg = 0x00;
  reg |= (p_264->loop_filter_beta & 0xF);
 }
 mfc_write(dev, reg, S5P_FIMV_ENC_BETA_OFF);

 if (p_264->entropy_mode == V4L2_MPEG_VIDEO_H264_ENTROPY_MODE_CABAC)
  mfc_write(dev, 1, S5P_FIMV_ENC_H264_ENTROPY_MODE);
 else
  mfc_write(dev, 0, S5P_FIMV_ENC_H264_ENTROPY_MODE);

 reg = mfc_read(dev, S5P_FIMV_ENC_H264_NUM_OF_REF);

 reg &= ~(0x3 << 5);
 reg |= (p_264->num_ref_pic_4p << 5);

 reg &= ~(0x1F);
 reg |= p_264->max_ref_pic;
 mfc_write(dev, reg, S5P_FIMV_ENC_H264_NUM_OF_REF);

 mfc_write(dev, p_264->_8x8_transform, S5P_FIMV_ENC_H264_TRANS_FLAG);

 reg = mfc_read(dev, S5P_FIMV_ENC_RC_CONFIG);

 reg &= ~(0x1 << 8);
 reg |= (p->rc_mb << 8);

 reg &= ~(0x3F);
 reg |= p_264->rc_frame_qp;
 mfc_write(dev, reg, S5P_FIMV_ENC_RC_CONFIG);

 if (p->rc_frame && p->rc_framerate_denom)
  mfc_write(dev, p->rc_framerate_num * 1000
   / p->rc_framerate_denom, S5P_FIMV_ENC_RC_FRAME_RATE);
 else
  mfc_write(dev, 0, S5P_FIMV_ENC_RC_FRAME_RATE);

 reg = mfc_read(dev, S5P_FIMV_ENC_RC_QBOUND);

 reg &= ~(0x3F << 8);
 reg |= (p_264->rc_max_qp << 8);

 reg &= ~(0x3F);
 reg |= p_264->rc_min_qp;
 mfc_write(dev, reg, S5P_FIMV_ENC_RC_QBOUND);

 if (p->rc_mb) {
  reg = mfc_read(dev, S5P_FIMV_ENC_RC_MB_CTRL);

  reg &= ~(0x1 << 3);
  reg |= (p_264->rc_mb_dark << 3);

  reg &= ~(0x1 << 2);
  reg |= (p_264->rc_mb_smooth << 2);

  reg &= ~(0x1 << 1);
  reg |= (p_264->rc_mb_static << 1);

  reg &= ~(0x1);
  reg |= p_264->rc_mb_activity;
  mfc_write(dev, reg, S5P_FIMV_ENC_RC_MB_CTRL);
 }
 if (!p->rc_frame && !p->rc_mb) {
  shm = s5p_mfc_read_info_v5(ctx, P_B_FRAME_QP);
  shm &= ~(0xFFF);
  shm |= ((p_264->rc_b_frame_qp & 0x3F) << 6);
  shm |= (p_264->rc_p_frame_qp & 0x3F);
  s5p_mfc_write_info_v5(ctx, shm, P_B_FRAME_QP);
 }

 shm = s5p_mfc_read_info_v5(ctx, EXT_ENC_CONTROL);

 shm &= ~(0x1 << 15);
 shm |= (p_264->vui_sar << 1);
 s5p_mfc_write_info_v5(ctx, shm, EXT_ENC_CONTROL);
 if (p_264->vui_sar) {

  shm = s5p_mfc_read_info_v5(ctx, SAMPLE_ASPECT_RATIO_IDC);
  shm &= ~(0xFF);
  shm |= p_264->vui_sar_idc;
  s5p_mfc_write_info_v5(ctx, shm, SAMPLE_ASPECT_RATIO_IDC);
  if (p_264->vui_sar_idc == 0xFF) {

   shm = s5p_mfc_read_info_v5(ctx, EXTENDED_SAR);
   shm &= ~(0xFFFFFFFF);
   shm |= p_264->vui_ext_sar_width << 16;
   shm |= p_264->vui_ext_sar_height;
   s5p_mfc_write_info_v5(ctx, shm, EXTENDED_SAR);
  }
 }

 shm = s5p_mfc_read_info_v5(ctx, H264_I_PERIOD);

 shm &= ~(0x1 << 16);
 shm |= (p_264->open_gop << 16);

 if (p_264->open_gop) {
  shm &= ~(0xFFFF);
  shm |= p_264->open_gop_size;
 }
 s5p_mfc_write_info_v5(ctx, shm, H264_I_PERIOD);

 shm = s5p_mfc_read_info_v5(ctx, EXT_ENC_CONTROL);

 if (p->frame_skip_mode ==
   V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT) {
  shm &= ~(0xFFFF << 16);
  shm |= (p_264->cpb_size << 16);
 }
 s5p_mfc_write_info_v5(ctx, shm, EXT_ENC_CONTROL);
 return 0;
}
