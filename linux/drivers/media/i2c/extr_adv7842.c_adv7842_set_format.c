
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct adv7842_state {scalar_t__ mode; struct adv7842_format_info const* format; } ;
struct adv7842_format_info {int code; } ;


 scalar_t__ ADV7842_MODE_SDP ;
 scalar_t__ ADV7842_PAD_SOURCE ;
 int EINVAL ;
 int MEDIA_BUS_FMT_YUYV8_2X8 ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int adv7842_fill_format (struct adv7842_state*,TYPE_1__*) ;
 struct adv7842_format_info* adv7842_format_info (struct adv7842_state*,int ) ;
 int adv7842_get_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int adv7842_setup_format (struct adv7842_state*) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int adv7842_set_format(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *format)
{
 struct adv7842_state *state = to_state(sd);
 const struct adv7842_format_info *info;

 if (format->pad != ADV7842_PAD_SOURCE)
  return -EINVAL;

 if (state->mode == ADV7842_MODE_SDP)
  return adv7842_get_format(sd, cfg, format);

 info = adv7842_format_info(state, format->format.code);
 if (info == ((void*)0))
  info = adv7842_format_info(state, MEDIA_BUS_FMT_YUYV8_2X8);

 adv7842_fill_format(state, &format->format);
 format->format.code = info->code;

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  struct v4l2_mbus_framefmt *fmt;

  fmt = v4l2_subdev_get_try_format(sd, cfg, format->pad);
  fmt->code = format->format.code;
 } else {
  state->format = info;
  adv7842_setup_format(state);
 }

 return 0;
}
