
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct imx258 {int streaming; int mutex; } ;
struct i2c_client {int dev; } ;


 int imx258_start_streaming (struct imx258*) ;
 int imx258_stop_streaming (struct imx258*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 struct imx258* to_imx258 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx258_set_stream(struct v4l2_subdev *sd, int enable)
{
 struct imx258 *imx258 = to_imx258(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = 0;

 mutex_lock(&imx258->mutex);
 if (imx258->streaming == enable) {
  mutex_unlock(&imx258->mutex);
  return 0;
 }

 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0) {
   pm_runtime_put_noidle(&client->dev);
   goto err_unlock;
  }





  ret = imx258_start_streaming(imx258);
  if (ret)
   goto err_rpm_put;
 } else {
  imx258_stop_streaming(imx258);
  pm_runtime_put(&client->dev);
 }

 imx258->streaming = enable;
 mutex_unlock(&imx258->mutex);

 return ret;

err_rpm_put:
 pm_runtime_put(&client->dev);
err_unlock:
 mutex_unlock(&imx258->mutex);

 return ret;
}
