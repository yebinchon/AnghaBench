
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov2685 {int streaming; int mutex; struct i2c_client* client; int ctrl_handler; } ;
struct i2c_client {int dev; } ;


 int OV2685_REG_VALUE_08BIT ;
 int REG_SC_CTRL_MODE ;
 int SC_CTRL_MODE_STANDBY ;
 int SC_CTRL_MODE_STREAMING ;
 int __v4l2_ctrl_handler_setup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov2685_write_reg (struct i2c_client*,int ,int ,int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct ov2685* to_ov2685 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2685_s_stream(struct v4l2_subdev *sd, int on)
{
 struct ov2685 *ov2685 = to_ov2685(sd);
 struct i2c_client *client = ov2685->client;
 int ret = 0;

 mutex_lock(&ov2685->mutex);

 on = !!on;
 if (on == ov2685->streaming)
  goto unlock_and_return;

 if (on) {
  ret = pm_runtime_get_sync(&ov2685->client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   goto unlock_and_return;
  }
  ret = __v4l2_ctrl_handler_setup(&ov2685->ctrl_handler);
  if (ret) {
   pm_runtime_put(&client->dev);
   goto unlock_and_return;
  }
  ret = ov2685_write_reg(client, REG_SC_CTRL_MODE,
    OV2685_REG_VALUE_08BIT, SC_CTRL_MODE_STREAMING);
  if (ret) {
   pm_runtime_put(&client->dev);
   goto unlock_and_return;
  }
 } else {
  ov2685_write_reg(client, REG_SC_CTRL_MODE,
    OV2685_REG_VALUE_08BIT, SC_CTRL_MODE_STANDBY);
  pm_runtime_put(&ov2685->client->dev);
 }

 ov2685->streaming = on;

unlock_and_return:
 mutex_unlock(&ov2685->mutex);

 return ret;
}
