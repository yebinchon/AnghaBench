
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int std; } ;


 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int cx23888_std_setup (struct i2c_client*) ;
 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int cx25840_debug ;
 int cx25840_std_setup (struct i2c_client*) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int input_change (struct i2c_client*) ;
 scalar_t__ is_cx23888 (struct cx25840_state*) ;
 int is_cx2583x (struct cx25840_state*) ;
 struct cx25840_state* to_state (int ) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int) ;

__attribute__((used)) static int set_v4lstd(struct i2c_client *client)
{
 struct cx25840_state *state = to_state(i2c_get_clientdata(client));
 u8 fmt = 0;
 u8 pal_m = 0;


 if (state->std == V4L2_STD_NTSC_M_JP) {
  fmt = 0x2;
 } else if (state->std == V4L2_STD_NTSC_443) {
  fmt = 0x3;
 } else if (state->std == V4L2_STD_PAL_M) {
  pal_m = 1;
  fmt = 0x5;
 } else if (state->std == V4L2_STD_PAL_N) {
  fmt = 0x6;
 } else if (state->std == V4L2_STD_PAL_Nc) {
  fmt = 0x7;
 } else if (state->std == V4L2_STD_PAL_60) {
  fmt = 0x8;
 } else {

  if (state->std & V4L2_STD_NTSC)
   fmt = 0x1;
  else if (state->std & V4L2_STD_PAL)
   fmt = 0x4;
  else if (state->std & V4L2_STD_SECAM)
   fmt = 0xc;
 }

 v4l_dbg(1, cx25840_debug, client,
  "changing video std to fmt %i\n", fmt);






 if (fmt >= 4 && fmt < 8) {

  cx25840_and_or(client, 0x400, ~0xf, 1);

  cx25840_and_or(client, 0x47b, ~6, 0);
 }
 cx25840_and_or(client, 0x400, ~0xf, fmt);
 cx25840_and_or(client, 0x403, ~0x3, pal_m);
 if (is_cx23888(state))
  cx23888_std_setup(client);
 else
  cx25840_std_setup(client);
 if (!is_cx2583x(state))
  input_change(client);
 return 0;
}
