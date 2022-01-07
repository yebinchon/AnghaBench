
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int is_initialized; } ;


 int cx18_av_initialize (struct v4l2_subdev*) ;
 struct cx18_av_state* to_cx18_av_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_load_fw(struct v4l2_subdev *sd)
{
 struct cx18_av_state *state = to_cx18_av_state(sd);

 if (!state->is_initialized) {

  state->is_initialized = 1;
  cx18_av_initialize(sd);
 }
 return 0;
}
