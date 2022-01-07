
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov13858 {int streaming; int mutex; } ;
struct i2c_client {int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov13858_start_streaming (struct ov13858*) ;
 int ov13858_stop_streaming (struct ov13858*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct ov13858* to_ov13858 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov13858_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct ov13858 *ov13858 = to_ov13858(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = 0;

 mutex_lock(&ov13858->mutex);
 if (ov13858->streaming == enable) {
  mutex_unlock(&ov13858->mutex);
  return 0;
 }

 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   goto err_unlock;
  }





  ret = ov13858_start_streaming(ov13858);
  if (ret)
   goto err_rpm_put;
 } else {
  ov13858_stop_streaming(ov13858);
  pm_runtime_put(&client->dev);
 }

 ov13858->streaming = enable;
 mutex_unlock(&ov13858->mutex);

 return ret;

err_rpm_put:
 pm_runtime_put(&client->dev);
err_unlock:
 mutex_unlock(&ov13858->mutex);

 return ret;
}
