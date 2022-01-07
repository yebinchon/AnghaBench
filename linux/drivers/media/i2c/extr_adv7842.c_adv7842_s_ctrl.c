
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct adv7842_state {int rgb_quantization_range; } ;


 int EINVAL ;
 int afe_write (struct v4l2_subdev*,int,int) ;
 int cp_write (struct v4l2_subdev*,int,int) ;
 int cp_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int debug ;
 int sdp_write (struct v4l2_subdev*,int,int) ;
 int sdp_write_and_or (struct v4l2_subdev*,int,int,int) ;
 int set_rgb_quantization_range (struct v4l2_subdev*) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int) ;

__attribute__((used)) static int adv7842_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct adv7842_state *state = to_state(sd);





 switch (ctrl->id) {

 case 132:
  cp_write(sd, 0x3c, ctrl->val);
  sdp_write(sd, 0x14, ctrl->val);

  return 0;
 case 131:
  cp_write(sd, 0x3a, ctrl->val);
  sdp_write(sd, 0x13, ctrl->val);

  return 0;
 case 128:
  cp_write(sd, 0x3b, ctrl->val);
  sdp_write(sd, 0x15, ctrl->val);

  return 0;
 case 129:
  cp_write(sd, 0x3d, ctrl->val);
  sdp_write(sd, 0x16, ctrl->val);

  return 0;

 case 135:
  afe_write(sd, 0xc8, ctrl->val);
  return 0;
 case 133:
  cp_write_and_or(sd, 0xbf, ~0x04, (ctrl->val << 2));
  sdp_write_and_or(sd, 0xdd, ~0x04, (ctrl->val << 2));
  return 0;
 case 134: {
  u8 R = (ctrl->val & 0xff0000) >> 16;
  u8 G = (ctrl->val & 0x00ff00) >> 8;
  u8 B = (ctrl->val & 0x0000ff);

  int Y = 66 * R + 129 * G + 25 * B;
  int U = -38 * R - 74 * G + 112 * B;
  int V = 112 * R - 94 * G - 18 * B;


  Y = (Y + 128) >> 8;
  U = (U + 128) >> 8;
  V = (V + 128) >> 8;

  Y += 16;
  U += 128;
  V += 128;

  v4l2_dbg(1, debug, sd, "R %x, G %x, B %x\n", R, G, B);
  v4l2_dbg(1, debug, sd, "Y %x, U %x, V %x\n", Y, U, V);


  cp_write(sd, 0xc1, R);
  cp_write(sd, 0xc0, G);
  cp_write(sd, 0xc2, B);

  sdp_write(sd, 0xde, Y);
  sdp_write(sd, 0xdf, (V & 0xf0) | ((U >> 4) & 0x0f));
  return 0;
 }
 case 130:
  state->rgb_quantization_range = ctrl->val;
  set_rgb_quantization_range(sd);
  return 0;
 }
 return -EINVAL;
}
