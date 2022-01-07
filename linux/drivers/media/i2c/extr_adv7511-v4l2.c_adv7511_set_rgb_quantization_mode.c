
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct adv7511_state {scalar_t__ fmt_code; TYPE_2__ dv_timings; } ;


 scalar_t__ MEDIA_BUS_FMT_RGB888_1X24 ;
 int V4L2_DV_FL_IS_CE_VIDEO ;



 int adv7511_csc_rgb_full2limit (struct v4l2_subdev*,int) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;

__attribute__((used)) static void adv7511_set_rgb_quantization_mode(struct v4l2_subdev *sd, struct v4l2_ctrl *ctrl)
{
 struct adv7511_state *state = get_adv7511_state(sd);


 if (state->fmt_code != MEDIA_BUS_FMT_RGB888_1X24) {

  adv7511_csc_rgb_full2limit(sd, 0);
  return;
 }

 switch (ctrl->val) {
 case 130:

  if (state->dv_timings.bt.flags & V4L2_DV_FL_IS_CE_VIDEO) {

   adv7511_csc_rgb_full2limit(sd, 1);
  } else {

   adv7511_csc_rgb_full2limit(sd, 0);
  }
  break;
 case 128:

  adv7511_csc_rgb_full2limit(sd, 1);
  break;
 case 129:

  adv7511_csc_rgb_full2limit(sd, 0);
  break;
 }
}
