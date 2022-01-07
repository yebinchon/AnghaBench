
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct imx355 {int streaming; int mutex; int hflip; int vflip; } ;
struct i2c_client {int dev; } ;


 int __v4l2_ctrl_grab (int ,int) ;
 int imx355_start_streaming (struct imx355*) ;
 int imx355_stop_streaming (struct imx355*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct imx355* to_imx355 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx355_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct imx355 *imx355 = to_imx355(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = 0;

 mutex_lock(&imx355->mutex);
 if (imx355->streaming == enable) {
  mutex_unlock(&imx355->mutex);
  return 0;
 }

 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   goto err_unlock;
  }





  ret = imx355_start_streaming(imx355);
  if (ret)
   goto err_rpm_put;
 } else {
  imx355_stop_streaming(imx355);
  pm_runtime_put(&client->dev);
 }

 imx355->streaming = enable;


 __v4l2_ctrl_grab(imx355->vflip, enable);
 __v4l2_ctrl_grab(imx355->hflip, enable);

 mutex_unlock(&imx355->mutex);

 return ret;

err_rpm_put:
 pm_runtime_put(&client->dev);
err_unlock:
 mutex_unlock(&imx355->mutex);

 return ret;
}
