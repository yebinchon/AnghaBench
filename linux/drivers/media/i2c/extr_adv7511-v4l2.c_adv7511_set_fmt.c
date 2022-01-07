
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int code; int colorspace; int quantization; int ycbcr_enc; int xfer_func; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; int colorspace; int quantization; int xfer_func; int ycbcr_enc; } ;
struct adv7511_state {scalar_t__ content_type; int fmt_code; int colorspace; int quantization; int rgb_quantization_range_ctrl; int xfer_func; int ycbcr_enc; } ;


 int EINVAL ;
 int HDMI_COLORIMETRY_EXTENDED ;
 int HDMI_COLORIMETRY_ITU_601 ;
 int HDMI_COLORIMETRY_ITU_709 ;
 int HDMI_COLORIMETRY_NONE ;
 int HDMI_COLORSPACE_RGB ;
 int HDMI_COLORSPACE_YUV422 ;
 int HDMI_EXTENDED_COLORIMETRY_OPRGB ;
 int HDMI_EXTENDED_COLORIMETRY_OPYCC_601 ;
 int HDMI_EXTENDED_COLORIMETRY_S_YCC_601 ;
 int HDMI_EXTENDED_COLORIMETRY_XV_YCC_601 ;
 int HDMI_EXTENDED_COLORIMETRY_XV_YCC_709 ;
 int HDMI_QUANTIZATION_RANGE_DEFAULT ;
 int HDMI_QUANTIZATION_RANGE_FULL ;
 int HDMI_QUANTIZATION_RANGE_LIMITED ;
 int HDMI_YCC_QUANTIZATION_RANGE_FULL ;
 int HDMI_YCC_QUANTIZATION_RANGE_LIMITED ;
 int V4L2_DV_IT_CONTENT_TYPE_GRAPHICS ;
 scalar_t__ V4L2_DV_IT_CONTENT_TYPE_NO_ITC ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int V4L2_YCBCR_ENC_BT2020_CONST_LUM ;
 int V4L2_YCBCR_ENC_XV601 ;
 int V4L2_YCBCR_ENC_XV709 ;
 int adv7511_fill_format (struct adv7511_state*,TYPE_1__*) ;
 int adv7511_set_rgb_quantization_mode (struct v4l2_subdev*,int ) ;
 int adv7511_wr_and_or (struct v4l2_subdev*,int,int,int) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int adv7511_set_fmt(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *format)
{
 struct adv7511_state *state = get_adv7511_state(sd);
 u8 c = HDMI_COLORIMETRY_NONE;
 u8 ec = HDMI_EXTENDED_COLORIMETRY_XV_YCC_601;
 u8 y = HDMI_COLORSPACE_RGB;
 u8 q = HDMI_QUANTIZATION_RANGE_DEFAULT;
 u8 yq = HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
 u8 itc = state->content_type != V4L2_DV_IT_CONTENT_TYPE_NO_ITC;
 u8 cn = itc ? state->content_type : V4L2_DV_IT_CONTENT_TYPE_GRAPHICS;

 if (format->pad != 0)
  return -EINVAL;
 switch (format->format.code) {
 case 136:
 case 135:
 case 137:
  break;
 default:
  return -EINVAL;
 }

 adv7511_fill_format(state, &format->format);
 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  struct v4l2_mbus_framefmt *fmt;

  fmt = v4l2_subdev_get_try_format(sd, cfg, format->pad);
  fmt->code = format->format.code;
  fmt->colorspace = format->format.colorspace;
  fmt->ycbcr_enc = format->format.ycbcr_enc;
  fmt->quantization = format->format.quantization;
  fmt->xfer_func = format->format.xfer_func;
  return 0;
 }

 switch (format->format.code) {
 case 136:
  adv7511_wr_and_or(sd, 0x15, 0xf0, 0x01);
  adv7511_wr_and_or(sd, 0x16, 0x03, 0xb8);
  y = HDMI_COLORSPACE_YUV422;
  break;
 case 135:
  adv7511_wr_and_or(sd, 0x15, 0xf0, 0x01);
  adv7511_wr_and_or(sd, 0x16, 0x03, 0xbc);
  y = HDMI_COLORSPACE_YUV422;
  break;
 case 137:
 default:
  adv7511_wr_and_or(sd, 0x15, 0xf0, 0x00);
  adv7511_wr_and_or(sd, 0x16, 0x03, 0x00);
  break;
 }
 state->fmt_code = format->format.code;
 state->colorspace = format->format.colorspace;
 state->ycbcr_enc = format->format.ycbcr_enc;
 state->quantization = format->format.quantization;
 state->xfer_func = format->format.xfer_func;

 switch (format->format.colorspace) {
 case 133:
  c = HDMI_COLORIMETRY_EXTENDED;
  ec = y ? HDMI_EXTENDED_COLORIMETRY_OPYCC_601 :
    HDMI_EXTENDED_COLORIMETRY_OPRGB;
  break;
 case 131:
  c = y ? HDMI_COLORIMETRY_ITU_601 : HDMI_COLORIMETRY_NONE;
  if (y && format->format.ycbcr_enc == V4L2_YCBCR_ENC_XV601) {
   c = HDMI_COLORIMETRY_EXTENDED;
   ec = HDMI_EXTENDED_COLORIMETRY_XV_YCC_601;
  }
  break;
 case 132:
  c = y ? HDMI_COLORIMETRY_ITU_709 : HDMI_COLORIMETRY_NONE;
  if (y && format->format.ycbcr_enc == V4L2_YCBCR_ENC_XV709) {
   c = HDMI_COLORIMETRY_EXTENDED;
   ec = HDMI_EXTENDED_COLORIMETRY_XV_YCC_709;
  }
  break;
 case 130:
  c = y ? HDMI_COLORIMETRY_EXTENDED : HDMI_COLORIMETRY_NONE;
  ec = y ? HDMI_EXTENDED_COLORIMETRY_S_YCC_601 :
    HDMI_EXTENDED_COLORIMETRY_XV_YCC_601;
  break;
 case 134:
  c = HDMI_COLORIMETRY_EXTENDED;
  if (y && format->format.ycbcr_enc == V4L2_YCBCR_ENC_BT2020_CONST_LUM)
   ec = 5;
  else
   ec = 6;
  break;
 default:
  break;
 }
 switch (format->format.quantization) {
 case 129:
  q = y ? HDMI_QUANTIZATION_RANGE_DEFAULT :
   HDMI_QUANTIZATION_RANGE_FULL;
  yq = q ? q - 1 : HDMI_YCC_QUANTIZATION_RANGE_FULL;
  break;
 case 128:
  q = y ? HDMI_QUANTIZATION_RANGE_DEFAULT :
   HDMI_QUANTIZATION_RANGE_LIMITED;
  yq = q ? q - 1 : HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
  break;
 }

 adv7511_wr_and_or(sd, 0x4a, 0xbf, 0);
 adv7511_wr_and_or(sd, 0x55, 0x9f, y << 5);
 adv7511_wr_and_or(sd, 0x56, 0x3f, c << 6);
 adv7511_wr_and_or(sd, 0x57, 0x83, (ec << 4) | (q << 2) | (itc << 7));
 adv7511_wr_and_or(sd, 0x59, 0x0f, (yq << 6) | (cn << 4));
 adv7511_wr_and_or(sd, 0x4a, 0xff, 1);
 adv7511_set_rgb_quantization_mode(sd, state->rgb_quantization_range_ctrl);

 return 0;
}
