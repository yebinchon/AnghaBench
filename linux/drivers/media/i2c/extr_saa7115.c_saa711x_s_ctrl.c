
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct saa711x_state {TYPE_2__* gain; TYPE_1__* agc; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {int val; } ;


 int EINVAL ;
 int R_0A_LUMA_BRIGHT_CNTL ;
 int R_0B_LUMA_CONTRAST_CNTL ;
 int R_0C_CHROMA_SAT_CNTL ;
 int R_0D_CHROMA_HUE_CNTL ;
 int R_0F_CHROMA_GAIN_CNTL ;





 int saa711x_write (struct v4l2_subdev*,int ,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct saa711x_state *state = to_state(sd);

 switch (ctrl->id) {
 case 132:
  saa711x_write(sd, R_0A_LUMA_BRIGHT_CNTL, ctrl->val);
  break;

 case 130:
  saa711x_write(sd, R_0B_LUMA_CONTRAST_CNTL, ctrl->val);
  break;

 case 128:
  saa711x_write(sd, R_0C_CHROMA_SAT_CNTL, ctrl->val);
  break;

 case 129:
  saa711x_write(sd, R_0D_CHROMA_HUE_CNTL, ctrl->val);
  break;

 case 131:

  if (state->agc->val)
   saa711x_write(sd, R_0F_CHROMA_GAIN_CNTL, state->gain->val);
  else
   saa711x_write(sd, R_0F_CHROMA_GAIN_CNTL, state->gain->val | 0x80);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
