
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {scalar_t__ selected_input; } ;


 scalar_t__ ADV7604_PAD_VGA_COMP ;
 scalar_t__ ADV7604_PAD_VGA_RGB ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline bool is_analog_input(struct v4l2_subdev *sd)
{
 struct adv76xx_state *state = to_state(sd);

 return state->selected_input == ADV7604_PAD_VGA_RGB ||
        state->selected_input == ADV7604_PAD_VGA_COMP;
}
