
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct vp27smpx_state {scalar_t__ radio; } ;
struct v4l2_subdev {int dummy; } ;


 struct vp27smpx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int vp27smpx_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
{
 struct vp27smpx_state *state = to_state(sd);

 state->radio = 0;
 return 0;
}
