
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {scalar_t__ codec_mode; int inst_no; struct s5p_mfc_dev* dev; } ;


 int EINVAL ;
 int S5P_FIMV_CH_SEQ_HEADER ;
 int S5P_FIMV_SI_CH0_INST_ID ;
 scalar_t__ S5P_MFC_CODEC_H263_ENC ;
 scalar_t__ S5P_MFC_CODEC_H264_ENC ;
 scalar_t__ S5P_MFC_CODEC_MPEG4_ENC ;
 int mfc_err (char*,scalar_t__) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 int s5p_mfc_set_enc_params_h263 (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_enc_params_h264 (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_enc_params_mpeg4 (struct s5p_mfc_ctx*) ;
 int s5p_mfc_set_shared_buffer (struct s5p_mfc_ctx*) ;

__attribute__((used)) static int s5p_mfc_init_encode_v5(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 if (ctx->codec_mode == S5P_MFC_CODEC_H264_ENC)
  s5p_mfc_set_enc_params_h264(ctx);
 else if (ctx->codec_mode == S5P_MFC_CODEC_MPEG4_ENC)
  s5p_mfc_set_enc_params_mpeg4(ctx);
 else if (ctx->codec_mode == S5P_MFC_CODEC_H263_ENC)
  s5p_mfc_set_enc_params_h263(ctx);
 else {
  mfc_err("Unknown codec for encoding (%x)\n",
   ctx->codec_mode);
  return -EINVAL;
 }
 s5p_mfc_set_shared_buffer(ctx);
 mfc_write(dev, ((S5P_FIMV_CH_SEQ_HEADER << 16) & 0x70000) |
  (ctx->inst_no), S5P_FIMV_SI_CH0_INST_ID);
 return 0;
}
