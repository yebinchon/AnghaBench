
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int radio; } ;


 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_s_radio(struct v4l2_subdev *sd)
{
 struct cx25840_state *state = to_state(sd);

 state->radio = 1;
 return 0;
}
