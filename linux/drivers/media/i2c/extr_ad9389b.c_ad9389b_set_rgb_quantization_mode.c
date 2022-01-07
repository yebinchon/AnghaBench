
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int val; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct ad9389b_state {TYPE_2__ dv_timings; } ;


 int EINVAL ;
 int V4L2_DV_FL_IS_CE_VIDEO ;



 int ad9389b_csc_rgb_full2limit (struct v4l2_subdev*,int) ;
 struct ad9389b_state* get_ad9389b_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ad9389b_set_rgb_quantization_mode(struct v4l2_subdev *sd, struct v4l2_ctrl *ctrl)
{
 struct ad9389b_state *state = get_ad9389b_state(sd);

 switch (ctrl->val) {
 case 130:

  if (state->dv_timings.bt.flags & V4L2_DV_FL_IS_CE_VIDEO) {

   ad9389b_csc_rgb_full2limit(sd, 1);
  } else {

   ad9389b_csc_rgb_full2limit(sd, 0);
  }
  break;
 case 128:

  ad9389b_csc_rgb_full2limit(sd, 1);
  break;
 case 129:

  ad9389b_csc_rgb_full2limit(sd, 0);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
