
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ccdc_a_law {int enable; } ;
struct TYPE_7__ {int pix_order; } ;
struct TYPE_5__ {struct ccdc_a_law alaw; } ;
struct TYPE_6__ {int pix_fmt; TYPE_1__ config_params; } ;
struct TYPE_8__ {scalar_t__ if_type; TYPE_3__ ycbcr; TYPE_2__ bayer; } ;


 int CCDC_PIXFMT_RAW ;
 int CCDC_PIXORDER_CBYCRY ;
 int CCDC_PIXORDER_YCBYCR ;
 int EINVAL ;
 scalar_t__ V4L2_PIX_FMT_SBGGR16 ;
 scalar_t__ V4L2_PIX_FMT_SBGGR8 ;
 scalar_t__ V4L2_PIX_FMT_UYVY ;
 scalar_t__ V4L2_PIX_FMT_YUYV ;
 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_4__ ccdc_cfg ;

__attribute__((used)) static int ccdc_set_pixel_format(u32 pixfmt)
{
 struct ccdc_a_law *alaw = &ccdc_cfg.bayer.config_params.alaw;

 if (ccdc_cfg.if_type == VPFE_RAW_BAYER) {
  ccdc_cfg.bayer.pix_fmt = CCDC_PIXFMT_RAW;
  if (pixfmt == V4L2_PIX_FMT_SBGGR8)
   alaw->enable = 1;
  else if (pixfmt != V4L2_PIX_FMT_SBGGR16)
   return -EINVAL;
 } else {
  if (pixfmt == V4L2_PIX_FMT_YUYV)
   ccdc_cfg.ycbcr.pix_order = CCDC_PIXORDER_YCBYCR;
  else if (pixfmt == V4L2_PIX_FMT_UYVY)
   ccdc_cfg.ycbcr.pix_order = CCDC_PIXORDER_CBYCRY;
  else
   return -EINVAL;
 }
 return 0;
}
