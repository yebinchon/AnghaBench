
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5p_jpeg_ctx {int subsampling; TYPE_2__* jpeg; } ;
struct TYPE_4__ {TYPE_1__* variant; } ;
struct TYPE_3__ {int version; } ;







 int V4L2_JPEG_CHROMA_SUBSAMPLING_411 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_420 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY ;
 int WARN_ON (int) ;
 int* exynos3250_decoded_subsampling ;
 int* exynos4x12_decoded_subsampling ;

__attribute__((used)) static int s5p_jpeg_to_user_subsampling(struct s5p_jpeg_ctx *ctx)
{
 switch (ctx->jpeg->variant->version) {
 case 128:
  WARN_ON(ctx->subsampling > 3);
  if (ctx->subsampling > 2)
   return V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY;
  return ctx->subsampling;
 case 132:
 case 130:
  WARN_ON(ctx->subsampling > 6);
  if (ctx->subsampling > 3)
   return V4L2_JPEG_CHROMA_SUBSAMPLING_411;
  return exynos3250_decoded_subsampling[ctx->subsampling];
 case 131:
  WARN_ON(ctx->subsampling > 3);
  if (ctx->subsampling > 2)
   return V4L2_JPEG_CHROMA_SUBSAMPLING_420;
  return exynos4x12_decoded_subsampling[ctx->subsampling];
 case 129:
  return ctx->subsampling;
 default:
  WARN_ON(ctx->subsampling > 3);
  return V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY;
 }
}
