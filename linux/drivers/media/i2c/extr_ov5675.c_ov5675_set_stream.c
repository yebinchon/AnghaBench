
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov5675 {int streaming; int mutex; } ;
struct i2c_client {int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5675_start_streaming (struct ov5675*) ;
 int ov5675_stop_streaming (struct ov5675*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct ov5675* to_ov5675 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5675_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct ov5675 *ov5675 = to_ov5675(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = 0;

 if (ov5675->streaming == enable)
  return 0;

 mutex_lock(&ov5675->mutex);
 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   mutex_unlock(&ov5675->mutex);
   return ret;
  }

  ret = ov5675_start_streaming(ov5675);
  if (ret) {
   enable = 0;
   ov5675_stop_streaming(ov5675);
   pm_runtime_put(&client->dev);
  }
 } else {
  ov5675_stop_streaming(ov5675);
  pm_runtime_put(&client->dev);
 }

 ov5675->streaming = enable;
 mutex_unlock(&ov5675->mutex);

 return ret;
}
