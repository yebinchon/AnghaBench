
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int radio; } ;


 struct cx18_av_state* to_cx18_av_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_radio(struct v4l2_subdev *sd)
{
 struct cx18_av_state *state = to_cx18_av_state(sd);
 state->radio = 1;
 return 0;
}
