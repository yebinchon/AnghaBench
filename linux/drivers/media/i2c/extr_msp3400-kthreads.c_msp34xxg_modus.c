
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int v4l2_std; scalar_t__ radio; } ;
struct i2c_client {int dev; } ;


 int V4L2_STD_MN ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_STD_NTSC_M_KR ;
 int V4L2_STD_SECAM_L ;
 int dev_dbg_lvl (int *,int,int ,char*) ;
 int i2c_get_clientdata (struct i2c_client*) ;
 int msp_debug ;
 struct msp_state* to_state (int ) ;

__attribute__((used)) static int msp34xxg_modus(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 if (state->radio) {
  dev_dbg_lvl(&client->dev, 1, msp_debug, "selected radio modus\n");
  return 0x0001;
 }
 if (state->v4l2_std == V4L2_STD_NTSC_M_JP) {
  dev_dbg_lvl(&client->dev, 1, msp_debug, "selected M (EIA-J) modus\n");
  return 0x4001;
 }
 if (state->v4l2_std == V4L2_STD_NTSC_M_KR) {
  dev_dbg_lvl(&client->dev, 1, msp_debug, "selected M (A2) modus\n");
  return 0x0001;
 }
 if (state->v4l2_std == V4L2_STD_SECAM_L) {
  dev_dbg_lvl(&client->dev, 1, msp_debug, "selected SECAM-L modus\n");
  return 0x6001;
 }
 if (state->v4l2_std & V4L2_STD_MN) {
  dev_dbg_lvl(&client->dev, 1, msp_debug, "selected M (BTSC) modus\n");
  return 0x2001;
 }
 return 0x7001;
}
