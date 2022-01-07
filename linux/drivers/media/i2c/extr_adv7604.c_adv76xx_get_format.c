
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_4__ {int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; TYPE_2__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct adv76xx_state {scalar_t__ source_pad; TYPE_1__* format; } ;
struct TYPE_3__ {int code; } ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int adv76xx_fill_format (struct adv76xx_state*,TYPE_2__*) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int adv76xx_get_format(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *format)
{
 struct adv76xx_state *state = to_state(sd);

 if (format->pad != state->source_pad)
  return -EINVAL;

 adv76xx_fill_format(state, &format->format);

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  struct v4l2_mbus_framefmt *fmt;

  fmt = v4l2_subdev_get_try_format(sd, cfg, format->pad);
  format->format.code = fmt->code;
 } else {
  format->format.code = state->format->code;
 }

 return 0;
}
