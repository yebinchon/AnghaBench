
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int curr_norm; } ;


 struct adv7180_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_g_std(struct v4l2_subdev *sd, v4l2_std_id *norm)
{
 struct adv7180_state *state = to_state(sd);

 *norm = state->curr_norm;

 return 0;
}
