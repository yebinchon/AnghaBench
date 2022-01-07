
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov5695 {int streaming; int mutex; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int __ov5695_start_stream (struct ov5695*) ;
 int __ov5695_stop_stream (struct ov5695*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct ov5695* to_ov5695 (struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;

__attribute__((used)) static int ov5695_s_stream(struct v4l2_subdev *sd, int on)
{
 struct ov5695 *ov5695 = to_ov5695(sd);
 struct i2c_client *client = ov5695->client;
 int ret = 0;

 mutex_lock(&ov5695->mutex);
 on = !!on;
 if (on == ov5695->streaming)
  goto unlock_and_return;

 if (on) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   goto unlock_and_return;
  }

  ret = __ov5695_start_stream(ov5695);
  if (ret) {
   v4l2_err(sd, "start stream failed while write regs\n");
   pm_runtime_put(&client->dev);
   goto unlock_and_return;
  }
 } else {
  __ov5695_stop_stream(ov5695);
  pm_runtime_put(&client->dev);
 }

 ov5695->streaming = on;

unlock_and_return:
 mutex_unlock(&ov5695->mutex);

 return ret;
}
