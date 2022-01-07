
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ pix_order; } ;
struct TYPE_6__ {scalar_t__ alg; } ;
struct TYPE_7__ {TYPE_1__ compress; } ;
struct TYPE_8__ {TYPE_2__ config_params; } ;
struct TYPE_10__ {scalar_t__ if_type; TYPE_4__ ycbcr; TYPE_3__ bayer; } ;


 scalar_t__ CCDC_PIXORDER_YCBYCR ;
 scalar_t__ ISIF_ALAW ;
 scalar_t__ ISIF_DPCM ;
 int V4L2_PIX_FMT_SBGGR16 ;
 int V4L2_PIX_FMT_SBGGR8 ;
 int V4L2_PIX_FMT_UYVY ;
 int V4L2_PIX_FMT_YUYV ;
 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_5__ isif_cfg ;

__attribute__((used)) static u32 isif_get_pixel_format(void)
{
 u32 pixfmt;

 if (isif_cfg.if_type == VPFE_RAW_BAYER)
  if (isif_cfg.bayer.config_params.compress.alg == ISIF_ALAW ||
      isif_cfg.bayer.config_params.compress.alg == ISIF_DPCM)
   pixfmt = V4L2_PIX_FMT_SBGGR8;
  else
   pixfmt = V4L2_PIX_FMT_SBGGR16;
 else {
  if (isif_cfg.ycbcr.pix_order == CCDC_PIXORDER_YCBYCR)
   pixfmt = V4L2_PIX_FMT_YUYV;
  else
   pixfmt = V4L2_PIX_FMT_UYVY;
 }
 return pixfmt;
}
