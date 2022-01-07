
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {unsigned int img_width; void* chroma_size; void* luma_size; int dev; void* buf_width; int img_height; } ;


 void* ALIGN (unsigned int,int) ;
 scalar_t__ IS_MFCV7_PLUS (int ) ;
 unsigned int MB_HEIGHT (int ) ;
 unsigned int MB_WIDTH (unsigned int) ;
 scalar_t__ MFC_CHROMA_PAD_BYTES_V7 ;
 scalar_t__ MFC_LUMA_PAD_BYTES_V7 ;
 int S5P_FIMV_NV12M_HALIGN_V6 ;

__attribute__((used)) static void s5p_mfc_enc_calc_src_size_v6(struct s5p_mfc_ctx *ctx)
{
 unsigned int mb_width, mb_height;

 mb_width = MB_WIDTH(ctx->img_width);
 mb_height = MB_HEIGHT(ctx->img_height);

 ctx->buf_width = ALIGN(ctx->img_width, S5P_FIMV_NV12M_HALIGN_V6);
 ctx->luma_size = ALIGN((mb_width * mb_height) * 256, 256);
 ctx->chroma_size = ALIGN((mb_width * mb_height) * 128, 256);


 if (IS_MFCV7_PLUS(ctx->dev)) {
  ctx->luma_size += MFC_LUMA_PAD_BYTES_V7;
  ctx->chroma_size += MFC_CHROMA_PAD_BYTES_V7;
 }
}
