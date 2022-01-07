
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct adv7180_state {int curr_norm; } ;


 int V4L2_STD_525_60 ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_g_pixelaspect(struct v4l2_subdev *sd, struct v4l2_fract *aspect)
{
 struct adv7180_state *state = to_state(sd);

 if (state->curr_norm & V4L2_STD_525_60) {
  aspect->numerator = 11;
  aspect->denominator = 10;
 } else {
  aspect->numerator = 54;
  aspect->denominator = 59;
 }

 return 0;
}
