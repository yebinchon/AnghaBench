
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings_cap {int dummy; } ;
struct adv76xx_state {int selected_input; } ;
 struct v4l2_dv_timings_cap const adv7604_timings_cap_analog ;
 struct v4l2_dv_timings_cap const adv76xx_timings_cap_digital ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static const struct v4l2_dv_timings_cap *
adv76xx_get_dv_timings_cap(struct v4l2_subdev *sd, int pad)
{
 if (pad == -1) {
  struct adv76xx_state *state = to_state(sd);

  pad = state->selected_input;
 }

 switch (pad) {
 case 128:
 case 133:
 case 132:
 case 131:
  return &adv76xx_timings_cap_digital;

 case 129:
 case 130:
 default:
  return &adv7604_timings_cap_analog;
 }
}
