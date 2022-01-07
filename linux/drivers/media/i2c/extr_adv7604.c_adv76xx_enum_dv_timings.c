
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_enum_dv_timings {scalar_t__ pad; } ;
struct adv76xx_state {scalar_t__ source_pad; } ;


 int EINVAL ;
 int adv76xx_check_dv_timings ;
 int adv76xx_get_dv_timings_cap (struct v4l2_subdev*,scalar_t__) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;
 int v4l2_enum_dv_timings_cap (struct v4l2_enum_dv_timings*,int ,int ,int *) ;

__attribute__((used)) static int adv76xx_enum_dv_timings(struct v4l2_subdev *sd,
   struct v4l2_enum_dv_timings *timings)
{
 struct adv76xx_state *state = to_state(sd);

 if (timings->pad >= state->source_pad)
  return -EINVAL;

 return v4l2_enum_dv_timings_cap(timings,
  adv76xx_get_dv_timings_cap(sd, timings->pad),
  adv76xx_check_dv_timings, ((void*)0));
}
