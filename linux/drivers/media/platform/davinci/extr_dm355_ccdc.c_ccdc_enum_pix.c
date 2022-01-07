
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ if_type; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ VPFE_RAW_BAYER ;
 TYPE_1__ ccdc_cfg ;
 int * ccdc_raw_bayer_pix_formats ;
 int * ccdc_raw_yuv_pix_formats ;

__attribute__((used)) static int ccdc_enum_pix(u32 *pix, int i)
{
 int ret = -EINVAL;
 if (ccdc_cfg.if_type == VPFE_RAW_BAYER) {
  if (i < ARRAY_SIZE(ccdc_raw_bayer_pix_formats)) {
   *pix = ccdc_raw_bayer_pix_formats[i];
   ret = 0;
  }
 } else {
  if (i < ARRAY_SIZE(ccdc_raw_yuv_pix_formats)) {
   *pix = ccdc_raw_yuv_pix_formats[i];
   ret = 0;
  }
 }
 return ret;
}
