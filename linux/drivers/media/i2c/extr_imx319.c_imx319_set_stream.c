
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct imx319 {int streaming; int mutex; int hflip; int vflip; } ;
struct i2c_client {int dev; } ;


 int __v4l2_ctrl_grab (int ,int) ;
 int imx319_start_streaming (struct imx319*) ;
 int imx319_stop_streaming (struct imx319*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct imx319* to_imx319 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx319_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct imx319 *imx319 = to_imx319(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = 0;

 mutex_lock(&imx319->mutex);
 if (imx319->streaming == enable) {
  mutex_unlock(&imx319->mutex);
  return 0;
 }

 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   goto err_unlock;
  }





  ret = imx319_start_streaming(imx319);
  if (ret)
   goto err_rpm_put;
 } else {
  imx319_stop_streaming(imx319);
  pm_runtime_put(&client->dev);
 }

 imx319->streaming = enable;


 __v4l2_ctrl_grab(imx319->vflip, enable);
 __v4l2_ctrl_grab(imx319->hflip, enable);

 mutex_unlock(&imx319->mutex);

 return ret;

err_rpm_put:
 pm_runtime_put(&client->dev);
err_unlock:
 mutex_unlock(&imx319->mutex);

 return ret;
}
