
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7842_state {scalar_t__ mode; } ;


 scalar_t__ ADV7842_MODE_COMP ;
 scalar_t__ ADV7842_MODE_RGB ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline bool is_analog_input(struct v4l2_subdev *sd)
{
 struct adv7842_state *state = to_state(sd);

 return ((state->mode == ADV7842_MODE_RGB) ||
  (state->mode == ADV7842_MODE_COMP));
}
