
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ pix_order; } ;
struct TYPE_4__ {scalar_t__ if_type; TYPE_1__ ycbcr; } ;
struct vpfe_ccdc {TYPE_2__ ccdc_cfg; } ;


 scalar_t__ CCDC_PIXORDER_YCBYCR ;
 int V4L2_PIX_FMT_UYVY ;
 int V4L2_PIX_FMT_YUYV ;
 scalar_t__ VPFE_RAW_BAYER ;

__attribute__((used)) static u32 vpfe_ccdc_get_pixel_format(struct vpfe_ccdc *ccdc)
{
 u32 pixfmt;

 if (ccdc->ccdc_cfg.if_type == VPFE_RAW_BAYER) {
  pixfmt = V4L2_PIX_FMT_YUYV;
 } else {
  if (ccdc->ccdc_cfg.ycbcr.pix_order == CCDC_PIXORDER_YCBYCR)
   pixfmt = V4L2_PIX_FMT_YUYV;
  else
   pixfmt = V4L2_PIX_FMT_UYVY;
 }

 return pixfmt;
}
