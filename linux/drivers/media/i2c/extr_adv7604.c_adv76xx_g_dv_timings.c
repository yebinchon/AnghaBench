
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct adv76xx_state {struct v4l2_dv_timings timings; } ;


 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv76xx_g_dv_timings(struct v4l2_subdev *sd,
  struct v4l2_dv_timings *timings)
{
 struct adv76xx_state *state = to_state(sd);

 *timings = state->timings;
 return 0;
}
