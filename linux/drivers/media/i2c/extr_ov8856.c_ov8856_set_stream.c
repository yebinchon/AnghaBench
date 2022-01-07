
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov8856 {int streaming; int mutex; } ;
struct i2c_client {int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov8856_start_streaming (struct ov8856*) ;
 int ov8856_stop_streaming (struct ov8856*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct ov8856* to_ov8856 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct ov8856 *ov8856 = to_ov8856(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = 0;

 if (ov8856->streaming == enable)
  return 0;

 mutex_lock(&ov8856->mutex);
 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   mutex_unlock(&ov8856->mutex);
   return ret;
  }

  ret = ov8856_start_streaming(ov8856);
  if (ret) {
   enable = 0;
   ov8856_stop_streaming(ov8856);
   pm_runtime_put(&client->dev);
  }
 } else {
  ov8856_stop_streaming(ov8856);
  pm_runtime_put(&client->dev);
 }

 ov8856->streaming = enable;
 mutex_unlock(&ov8856->mutex);

 return ret;
}
