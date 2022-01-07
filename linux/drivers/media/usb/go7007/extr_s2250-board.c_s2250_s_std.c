
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct s2250 {int input; int std; } ;
struct i2c_client {int dummy; } ;


 int V4L2_STD_625_50 ;
 struct s2250* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vid_regs_fp ;
 int vid_regs_fp_pal ;
 int write_reg_fp (struct i2c_client*,int,int) ;
 int write_regs_fp (struct i2c_client*,int ) ;

__attribute__((used)) static int s2250_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
{
 struct s2250 *state = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u16 vidsource;

 vidsource = (state->input == 1) ? 0x040 : 0x020;
 if (norm & V4L2_STD_625_50) {
  write_regs_fp(client, vid_regs_fp);
  write_regs_fp(client, vid_regs_fp_pal);
  write_reg_fp(client, 0x20, vidsource);
 } else {
  write_regs_fp(client, vid_regs_fp);
  write_reg_fp(client, 0x20, vidsource | 1);
 }
 state->std = norm;
 return 0;
}
