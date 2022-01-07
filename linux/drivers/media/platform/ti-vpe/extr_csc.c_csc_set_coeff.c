
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct csc_data {int dummy; } ;
struct colorspace_coeffs {int* sd; int* hd; } ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;


 int CSC_BYPASS ;
 int V4L2_COLORSPACE_REC709 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_COLORSPACE_SRGB ;
 struct colorspace_coeffs* colorspace_coeffs ;

void csc_set_coeff(struct csc_data *csc, u32 *csc_reg0,
  enum v4l2_colorspace src_colorspace,
  enum v4l2_colorspace dst_colorspace)
{
 u32 *csc_reg5 = csc_reg0 + 5;
 u32 *shadow_csc = csc_reg0;
 struct colorspace_coeffs *sd_hd_coeffs;
 u16 *coeff, *end_coeff;
 enum v4l2_colorspace yuv_colorspace;
 int sel = 0;






 if (dst_colorspace == V4L2_COLORSPACE_SRGB &&
   (src_colorspace == V4L2_COLORSPACE_SMPTE170M ||
   src_colorspace == V4L2_COLORSPACE_REC709)) {

  sel = 1;
  yuv_colorspace = src_colorspace;
 } else if ((dst_colorspace == V4L2_COLORSPACE_SMPTE170M ||
   dst_colorspace == V4L2_COLORSPACE_REC709) &&
   src_colorspace == V4L2_COLORSPACE_SRGB) {

  sel = 3;
  yuv_colorspace = dst_colorspace;
 } else {
  *csc_reg5 |= CSC_BYPASS;
  return;
 }

 sd_hd_coeffs = &colorspace_coeffs[sel];


 if (yuv_colorspace == V4L2_COLORSPACE_SMPTE170M)
  coeff = sd_hd_coeffs->sd;
 else
  coeff = sd_hd_coeffs->hd;

 end_coeff = coeff + 12;

 for (; coeff < end_coeff; coeff += 2)
  *shadow_csc++ = (*(coeff + 1) << 16) | *coeff;
}
