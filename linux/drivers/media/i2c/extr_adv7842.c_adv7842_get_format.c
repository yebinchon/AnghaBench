
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_4__ {int width; int height; int code; int colorspace; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; TYPE_2__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct adv7842_state {scalar_t__ mode; int norm; TYPE_1__* format; } ;
struct TYPE_3__ {int code; } ;


 scalar_t__ ADV7842_MODE_SDP ;
 scalar_t__ ADV7842_PAD_SOURCE ;
 int EINVAL ;
 int MEDIA_BUS_FMT_YUYV8_2X8 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_STD_525_60 ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int adv7842_fill_format (struct adv7842_state*,TYPE_2__*) ;
 int sdp_read (struct v4l2_subdev*,int) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int adv7842_get_format(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *format)
{
 struct adv7842_state *state = to_state(sd);

 if (format->pad != ADV7842_PAD_SOURCE)
  return -EINVAL;

 if (state->mode == ADV7842_MODE_SDP) {

  if (!(sdp_read(sd, 0x5a) & 0x01))
   return -EINVAL;
  format->format.code = MEDIA_BUS_FMT_YUYV8_2X8;
  format->format.width = 720;

  if (state->norm & V4L2_STD_525_60)
   format->format.height = 480;
  else
   format->format.height = 576;
  format->format.colorspace = V4L2_COLORSPACE_SMPTE170M;
  return 0;
 }

 adv7842_fill_format(state, &format->format);

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  struct v4l2_mbus_framefmt *fmt;

  fmt = v4l2_subdev_get_try_format(sd, cfg, format->pad);
  format->format.code = fmt->code;
 } else {
  format->format.code = state->format->code;
 }

 return 0;
}
