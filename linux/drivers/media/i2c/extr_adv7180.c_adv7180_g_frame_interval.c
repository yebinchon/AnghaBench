
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int curr_norm; } ;


 int V4L2_STD_525_60 ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_g_frame_interval(struct v4l2_subdev *sd,
        struct v4l2_subdev_frame_interval *fi)
{
 struct adv7180_state *state = to_state(sd);

 if (state->curr_norm & V4L2_STD_525_60) {
  fi->interval.numerator = 1001;
  fi->interval.denominator = 30000;
 } else {
  fi->interval.numerator = 1;
  fi->interval.denominator = 25;
 }

 return 0;
}
