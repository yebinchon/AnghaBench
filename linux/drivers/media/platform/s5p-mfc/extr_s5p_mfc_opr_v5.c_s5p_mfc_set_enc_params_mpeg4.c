
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_mfc_mpeg4_enc_params {int level; unsigned int profile; unsigned int quarter_pixel; int rc_b_frame_qp; int rc_p_frame_qp; unsigned int rc_frame_qp; int rc_max_qp; unsigned int rc_min_qp; } ;
struct TYPE_2__ {struct s5p_mfc_mpeg4_enc_params mpeg4; } ;
struct s5p_mfc_enc_params {int num_b_frame; int rc_framerate_denom; int rc_framerate_num; scalar_t__ frame_skip_mode; int vbv_size; scalar_t__ rc_frame; TYPE_1__ codec; } ;
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {struct s5p_mfc_enc_params enc_params; struct s5p_mfc_dev* dev; } ;


 int EXT_ENC_CONTROL ;
 int P_B_FRAME_QP ;
 int RC_VOP_TIMING ;
 int S5P_FIMV_ENC_MPEG4_QUART_PXL ;
 int S5P_FIMV_ENC_PIC_TYPE_CTRL ;
 int S5P_FIMV_ENC_PROFILE ;
 int S5P_FIMV_ENC_RC_CONFIG ;
 int S5P_FIMV_ENC_RC_FRAME_RATE ;
 int S5P_FIMV_ENC_RC_QBOUND ;
 scalar_t__ V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT ;
 unsigned int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,unsigned int,int ) ;
 unsigned int s5p_mfc_read_info_v5 (struct s5p_mfc_ctx*,int ) ;
 int s5p_mfc_set_enc_params (struct s5p_mfc_ctx*) ;
 int s5p_mfc_write_info_v5 (struct s5p_mfc_ctx*,unsigned int,int ) ;

__attribute__((used)) static int s5p_mfc_set_enc_params_mpeg4(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 struct s5p_mfc_enc_params *p = &ctx->enc_params;
 struct s5p_mfc_mpeg4_enc_params *p_mpeg4 = &p->codec.mpeg4;
 unsigned int reg;
 unsigned int shm;
 unsigned int framerate;

 s5p_mfc_set_enc_params(ctx);

 reg = mfc_read(dev, S5P_FIMV_ENC_PIC_TYPE_CTRL);

 reg &= ~(0x3 << 16);
 reg |= (p->num_b_frame << 16);
 mfc_write(dev, reg, S5P_FIMV_ENC_PIC_TYPE_CTRL);

 reg = mfc_read(dev, S5P_FIMV_ENC_PROFILE);

 reg &= ~(0xFF << 8);
 reg |= (p_mpeg4->level << 8);

 reg &= ~(0x3F);
 reg |= p_mpeg4->profile;
 mfc_write(dev, reg, S5P_FIMV_ENC_PROFILE);

 mfc_write(dev, p_mpeg4->quarter_pixel, S5P_FIMV_ENC_MPEG4_QUART_PXL);

 if (!p->rc_frame) {
  shm = s5p_mfc_read_info_v5(ctx, P_B_FRAME_QP);
  shm &= ~(0xFFF);
  shm |= ((p_mpeg4->rc_b_frame_qp & 0x3F) << 6);
  shm |= (p_mpeg4->rc_p_frame_qp & 0x3F);
  s5p_mfc_write_info_v5(ctx, shm, P_B_FRAME_QP);
 }

 if (p->rc_frame) {
  if (p->rc_framerate_denom > 0) {
   framerate = p->rc_framerate_num * 1000 /
      p->rc_framerate_denom;
   mfc_write(dev, framerate,
    S5P_FIMV_ENC_RC_FRAME_RATE);
   shm = s5p_mfc_read_info_v5(ctx, RC_VOP_TIMING);
   shm &= ~(0xFFFFFFFF);
   shm |= (1UL << 31);
   shm |= ((p->rc_framerate_num & 0x7FFF) << 16);
   shm |= (p->rc_framerate_denom & 0xFFFF);
   s5p_mfc_write_info_v5(ctx, shm, RC_VOP_TIMING);
  }
 } else {
  mfc_write(dev, 0, S5P_FIMV_ENC_RC_FRAME_RATE);
 }

 reg = mfc_read(dev, S5P_FIMV_ENC_RC_CONFIG);

 reg &= ~(0x3F);
 reg |= p_mpeg4->rc_frame_qp;
 mfc_write(dev, reg, S5P_FIMV_ENC_RC_CONFIG);

 reg = mfc_read(dev, S5P_FIMV_ENC_RC_QBOUND);

 reg &= ~(0x3F << 8);
 reg |= (p_mpeg4->rc_max_qp << 8);

 reg &= ~(0x3F);
 reg |= p_mpeg4->rc_min_qp;
 mfc_write(dev, reg, S5P_FIMV_ENC_RC_QBOUND);

 shm = s5p_mfc_read_info_v5(ctx, EXT_ENC_CONTROL);

 if (p->frame_skip_mode ==
   V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT) {
  shm &= ~(0xFFFF << 16);
  shm |= (p->vbv_size << 16);
 }
 s5p_mfc_write_info_v5(ctx, shm, EXT_ENC_CONTROL);
 return 0;
}
