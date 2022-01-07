
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s5p_jpeg_ctx {int subsampling; TYPE_2__* jpeg; } ;
struct TYPE_4__ {TYPE_1__* variant; } ;
struct TYPE_3__ {unsigned int version; } ;


 unsigned int SJPEG_EXYNOS3250 ;
 unsigned int SJPEG_EXYNOS5420 ;
 unsigned int SJPEG_EXYNOS5433 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_411 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_420 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_422 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_444 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY ;

__attribute__((used)) static bool s5p_jpeg_subsampling_decode(struct s5p_jpeg_ctx *ctx,
     unsigned int subsampling)
{
 unsigned int version;

 switch (subsampling) {
 case 0x11:
  ctx->subsampling = V4L2_JPEG_CHROMA_SUBSAMPLING_444;
  break;
 case 0x21:
  ctx->subsampling = V4L2_JPEG_CHROMA_SUBSAMPLING_422;
  break;
 case 0x22:
  ctx->subsampling = V4L2_JPEG_CHROMA_SUBSAMPLING_420;
  break;
 case 0x33:
  ctx->subsampling = V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY;
  break;
 case 0x41:




  version = ctx->jpeg->variant->version;
  if (version != SJPEG_EXYNOS3250 &&
      version != SJPEG_EXYNOS5420 &&
      version != SJPEG_EXYNOS5433)
   return 0;

  ctx->subsampling = V4L2_JPEG_CHROMA_SUBSAMPLING_411;
  break;
 default:
  return 0;
 }

 return 1;
}
