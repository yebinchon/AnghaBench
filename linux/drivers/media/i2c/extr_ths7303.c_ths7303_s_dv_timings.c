
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {scalar_t__ type; int bt; } ;
struct ths7303_state {scalar_t__ std_id; int bt; } ;


 int EINVAL ;
 scalar_t__ V4L2_DV_BT_656_1120 ;
 int ths7303_config (struct v4l2_subdev*) ;
 struct ths7303_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ths7303_s_dv_timings(struct v4l2_subdev *sd,
          struct v4l2_dv_timings *dv_timings)
{
 struct ths7303_state *state = to_state(sd);

 if (!dv_timings || dv_timings->type != V4L2_DV_BT_656_1120)
  return -EINVAL;

 state->bt = dv_timings->bt;
 state->std_id = 0;

 return ths7303_config(sd);
}
