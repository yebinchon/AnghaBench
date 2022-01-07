
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {int img_width; int img_height; scalar_t__ codec_mode; int mv_size; void* chroma_size; void* luma_size; struct s5p_mfc_dev* dev; void* buf_height; void* buf_width; } ;


 void* ALIGN (int,int) ;
 scalar_t__ IS_MFCV10 (struct s5p_mfc_dev*) ;
 scalar_t__ IS_MFCV8_PLUS (struct s5p_mfc_dev*) ;
 scalar_t__ S5P_FIMV_D_ALIGN_PLANE_SIZE_V8 ;
 int S5P_FIMV_NV12MT_HALIGN_V6 ;
 int S5P_FIMV_NV12MT_VALIGN_V6 ;
 scalar_t__ S5P_MFC_CODEC_H264_DEC ;
 scalar_t__ S5P_MFC_CODEC_H264_MVC_DEC ;
 scalar_t__ S5P_MFC_CODEC_HEVC_DEC ;
 int S5P_MFC_DEC_MV_SIZE_V10 (int,int) ;
 int S5P_MFC_DEC_MV_SIZE_V6 (int,int) ;
 void* calc_plane (int,int) ;
 int mfc_debug (int,char*,int,int,void*,void*) ;
 int s5p_mfc_dec_hevc_mv_size (int,int) ;

__attribute__((used)) static void s5p_mfc_dec_calc_dpb_size_v6(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 ctx->buf_width = ALIGN(ctx->img_width, S5P_FIMV_NV12MT_HALIGN_V6);
 ctx->buf_height = ALIGN(ctx->img_height, S5P_FIMV_NV12MT_VALIGN_V6);
 mfc_debug(2, "SEQ Done: Movie dimensions %dx%d,\n"
   "buffer dimensions: %dx%d\n", ctx->img_width,
   ctx->img_height, ctx->buf_width, ctx->buf_height);

 ctx->luma_size = calc_plane(ctx->img_width, ctx->img_height);
 ctx->chroma_size = calc_plane(ctx->img_width, (ctx->img_height >> 1));
 if (IS_MFCV8_PLUS(ctx->dev)) {

  ctx->luma_size += S5P_FIMV_D_ALIGN_PLANE_SIZE_V8;
  ctx->chroma_size += S5P_FIMV_D_ALIGN_PLANE_SIZE_V8;
 }

 if (ctx->codec_mode == S5P_MFC_CODEC_H264_DEC ||
   ctx->codec_mode == S5P_MFC_CODEC_H264_MVC_DEC) {
  if (IS_MFCV10(dev)) {
   ctx->mv_size = S5P_MFC_DEC_MV_SIZE_V10(ctx->img_width,
     ctx->img_height);
  } else {
   ctx->mv_size = S5P_MFC_DEC_MV_SIZE_V6(ctx->img_width,
     ctx->img_height);
  }
 } else if (ctx->codec_mode == S5P_MFC_CODEC_HEVC_DEC) {
  ctx->mv_size = s5p_mfc_dec_hevc_mv_size(ctx->img_width,
    ctx->img_height);
  ctx->mv_size = ALIGN(ctx->mv_size, 32);
 } else {
  ctx->mv_size = 0;
 }
}
