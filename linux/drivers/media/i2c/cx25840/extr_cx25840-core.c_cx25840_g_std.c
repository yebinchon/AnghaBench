
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {int std; } ;


 struct cx25840_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_g_std(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct cx25840_state *state = to_state(sd);

 *std = state->std;

 return 0;
}
