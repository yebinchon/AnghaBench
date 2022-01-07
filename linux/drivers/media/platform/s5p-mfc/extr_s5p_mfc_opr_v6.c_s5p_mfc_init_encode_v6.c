
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int instance_id; int e_source_second_plane_stride; int e_source_first_plane_stride; } ;
struct s5p_mfc_dev {int mfc_cmds; struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {scalar_t__ codec_mode; int inst_no; int img_width; struct s5p_mfc_dev* dev; } ;


 int EINVAL ;
 scalar_t__ IS_MFCV7_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_CH_SEQ_HEADER_V6 ;
 scalar_t__ S5P_FIMV_CODEC_HEVC_ENC ;
 scalar_t__ S5P_MFC_CODEC_H263_ENC ;
 scalar_t__ S5P_MFC_CODEC_H264_ENC ;
 scalar_t__ S5P_MFC_CODEC_MPEG4_ENC ;
 scalar_t__ S5P_MFC_CODEC_VP8_ENC ;
 int cmd_host2risc ;
 int mfc_err (char*,scalar_t__) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*,int ,int *) ;
 int s5p_mfc_set_enc_params_h263 (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_enc_params_h264 (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_enc_params_hevc (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_enc_params_mpeg4 (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_enc_params_vp8 (struct s5p_mfc_ctx*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int s5p_mfc_init_encode_v6(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

 if (ctx->codec_mode == S5P_MFC_CODEC_H264_ENC)
  s5p_mfc_set_enc_params_h264(ctx);
 else if (ctx->codec_mode == S5P_MFC_CODEC_MPEG4_ENC)
  s5p_mfc_set_enc_params_mpeg4(ctx);
 else if (ctx->codec_mode == S5P_MFC_CODEC_H263_ENC)
  s5p_mfc_set_enc_params_h263(ctx);
 else if (ctx->codec_mode == S5P_MFC_CODEC_VP8_ENC)
  s5p_mfc_set_enc_params_vp8(ctx);
 else if (ctx->codec_mode == S5P_FIMV_CODEC_HEVC_ENC)
  s5p_mfc_set_enc_params_hevc(ctx);
 else {
  mfc_err("Unknown codec for encoding (%x).\n",
   ctx->codec_mode);
  return -EINVAL;
 }


 if (IS_MFCV7_PLUS(dev)) {
  writel(ctx->img_width, mfc_regs->e_source_first_plane_stride);
  writel(ctx->img_width, mfc_regs->e_source_second_plane_stride);
 }

 writel(ctx->inst_no, mfc_regs->instance_id);
 s5p_mfc_hw_call(dev->mfc_cmds, cmd_host2risc, dev,
   S5P_FIMV_CH_SEQ_HEADER_V6, ((void*)0));

 return 0;
}
