
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int field; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int field; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int adv7180_mbus_fmt (struct v4l2_subdev*,TYPE_1__*) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int adv7180_get_pad_format(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_format *format)
{
 struct adv7180_state *state = to_state(sd);

 if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
  format->format = *v4l2_subdev_get_try_format(sd, cfg, 0);
 } else {
  adv7180_mbus_fmt(sd, &format->format);
  format->format.field = state->field;
 }

 return 0;
}
