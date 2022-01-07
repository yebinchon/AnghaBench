
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int field; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int flags; } ;


 int ADV7180_FLAG_I2P ;
 int V4L2_FIELD_ALTERNATE ;

 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int adv7180_mbus_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;
 int adv7180_set_field_mode (struct adv7180_state*) ;
 int adv7180_set_power (struct adv7180_state*,int) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int adv7180_set_pad_format(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *format)
{
 struct adv7180_state *state = to_state(sd);
 struct v4l2_mbus_framefmt *framefmt;
 int ret;

 switch (format->format.field) {
 case 128:
  if (state->chip_info->flags & ADV7180_FLAG_I2P)
   break;

 default:
  format->format.field = V4L2_FIELD_ALTERNATE;
  break;
 }

 ret = adv7180_mbus_fmt(sd, &format->format);

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  if (state->field != format->format.field) {
   state->field = format->format.field;
   adv7180_set_power(state, 0);
   adv7180_set_field_mode(state);
   adv7180_set_power(state, 1);
  }
 } else {
  framefmt = v4l2_subdev_get_try_format(sd, cfg, 0);
  *framefmt = format->format;
 }

 return ret;
}
