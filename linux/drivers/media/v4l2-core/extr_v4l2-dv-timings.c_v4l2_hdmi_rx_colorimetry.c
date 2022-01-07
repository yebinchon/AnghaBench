
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_hdmi_colorimetry {void* xfer_func; void* ycbcr_enc; void* colorspace; void* quantization; void* member_3; int member_2; int member_1; void* member_0; } ;
struct hdmi_vendor_infoframe {scalar_t__ vic; } ;
struct hdmi_avi_infoframe {int video_code; int colorspace; int extended_colorimetry; int colorimetry; int quantization_range; } ;
 void* V4L2_COLORSPACE_BT2020 ;
 void* V4L2_COLORSPACE_OPRGB ;
 void* V4L2_COLORSPACE_REC709 ;
 void* V4L2_COLORSPACE_SMPTE170M ;
 void* V4L2_COLORSPACE_SRGB ;
 int V4L2_QUANTIZATION_FULL_RANGE ;
 void* V4L2_QUANTIZATION_LIM_RANGE ;
 void* V4L2_XFER_FUNC_709 ;
 void* V4L2_XFER_FUNC_OPRGB ;
 void* V4L2_XFER_FUNC_SRGB ;
 void* V4L2_YCBCR_ENC_601 ;
 void* V4L2_YCBCR_ENC_709 ;
 void* V4L2_YCBCR_ENC_BT2020 ;
 void* V4L2_YCBCR_ENC_BT2020_CONST_LUM ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 void* V4L2_YCBCR_ENC_XV601 ;
 void* V4L2_YCBCR_ENC_XV709 ;

struct v4l2_hdmi_colorimetry
v4l2_hdmi_rx_colorimetry(const struct hdmi_avi_infoframe *avi,
    const struct hdmi_vendor_infoframe *hdmi,
    unsigned int height)
{
 struct v4l2_hdmi_colorimetry c = {
  V4L2_COLORSPACE_SRGB,
  V4L2_YCBCR_ENC_DEFAULT,
  V4L2_QUANTIZATION_FULL_RANGE,
  V4L2_XFER_FUNC_SRGB
 };
 bool is_ce = avi->video_code || (hdmi && hdmi->vic);
 bool is_sdtv = height <= 576;
 bool default_is_lim_range_rgb = avi->video_code > 1;

 switch (avi->colorspace) {
 case 137:

  switch (avi->colorimetry) {
  case 141:
   switch (avi->extended_colorimetry) {
   case 134:
    c.colorspace = V4L2_COLORSPACE_OPRGB;
    c.xfer_func = V4L2_XFER_FUNC_OPRGB;
    break;
   case 136:
    c.colorspace = V4L2_COLORSPACE_BT2020;
    c.xfer_func = V4L2_XFER_FUNC_709;
    break;
   default:
    break;
   }
   break;
  default:
   break;
  }
  switch (avi->quantization_range) {
  case 128:
   c.quantization = V4L2_QUANTIZATION_LIM_RANGE;
   break;
  case 129:
   break;
  default:
   if (default_is_lim_range_rgb)
    c.quantization = V4L2_QUANTIZATION_LIM_RANGE;
   break;
  }
  break;

 default:

  c.quantization = V4L2_QUANTIZATION_LIM_RANGE;
  switch (avi->colorimetry) {
  case 138:
   if (!is_ce)
    break;
   if (is_sdtv) {
    c.colorspace = V4L2_COLORSPACE_SMPTE170M;
    c.ycbcr_enc = V4L2_YCBCR_ENC_601;
   } else {
    c.colorspace = V4L2_COLORSPACE_REC709;
    c.ycbcr_enc = V4L2_YCBCR_ENC_709;
   }
   c.xfer_func = V4L2_XFER_FUNC_709;
   break;
  case 140:
   c.colorspace = V4L2_COLORSPACE_SMPTE170M;
   c.ycbcr_enc = V4L2_YCBCR_ENC_601;
   c.xfer_func = V4L2_XFER_FUNC_709;
   break;
  case 139:
   c.colorspace = V4L2_COLORSPACE_REC709;
   c.ycbcr_enc = V4L2_YCBCR_ENC_709;
   c.xfer_func = V4L2_XFER_FUNC_709;
   break;
  case 141:
   switch (avi->extended_colorimetry) {
   case 131:
    c.colorspace = V4L2_COLORSPACE_REC709;
    c.ycbcr_enc = V4L2_YCBCR_ENC_XV709;
    c.xfer_func = V4L2_XFER_FUNC_709;
    break;
   case 130:
    c.colorspace = V4L2_COLORSPACE_REC709;
    c.ycbcr_enc = V4L2_YCBCR_ENC_XV601;
    c.xfer_func = V4L2_XFER_FUNC_709;
    break;
   case 132:
    c.colorspace = V4L2_COLORSPACE_SRGB;
    c.ycbcr_enc = V4L2_YCBCR_ENC_601;
    c.xfer_func = V4L2_XFER_FUNC_SRGB;
    break;
   case 133:
    c.colorspace = V4L2_COLORSPACE_OPRGB;
    c.ycbcr_enc = V4L2_YCBCR_ENC_601;
    c.xfer_func = V4L2_XFER_FUNC_OPRGB;
    break;
   case 136:
    c.colorspace = V4L2_COLORSPACE_BT2020;
    c.ycbcr_enc = V4L2_YCBCR_ENC_BT2020;
    c.xfer_func = V4L2_XFER_FUNC_709;
    break;
   case 135:
    c.colorspace = V4L2_COLORSPACE_BT2020;
    c.ycbcr_enc = V4L2_YCBCR_ENC_BT2020_CONST_LUM;
    c.xfer_func = V4L2_XFER_FUNC_709;
    break;
   default:
    c.colorspace = V4L2_COLORSPACE_REC709;
    c.ycbcr_enc = V4L2_YCBCR_ENC_709;
    c.xfer_func = V4L2_XFER_FUNC_709;
    break;
   }
   break;
  default:
   break;
  }




  break;
 }
 return c;
}
