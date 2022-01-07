
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int is_initialized; } ;


 int cx25840_reset (struct v4l2_subdev*,int ) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_load_fw(struct v4l2_subdev *sd)
{
 struct cx25840_state *state = to_state(sd);

 if (!state->is_initialized) {

  cx25840_reset(sd, 0);
 }
 return 0;
}
