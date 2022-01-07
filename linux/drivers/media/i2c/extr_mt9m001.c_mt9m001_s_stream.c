
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9m001 {int streaming; int mutex; int hdl; } ;
struct i2c_client {int dev; } ;


 int MT9M001_OUTPUT_CONTROL ;
 int __v4l2_ctrl_handler_setup (int *) ;
 int mt9m001_apply_selection (struct v4l2_subdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int reg_write (struct i2c_client*,int ,int) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 int ret = 0;

 mutex_lock(&mt9m001->mutex);

 if (mt9m001->streaming == enable)
  goto done;

 if (enable) {
  ret = pm_runtime_get_sync(&client->dev);
  if (ret < 0)
   goto put_unlock;

  ret = mt9m001_apply_selection(sd);
  if (ret)
   goto put_unlock;

  ret = __v4l2_ctrl_handler_setup(&mt9m001->hdl);
  if (ret)
   goto put_unlock;


  ret = reg_write(client, MT9M001_OUTPUT_CONTROL, 2);
  if (ret < 0)
   goto put_unlock;
 } else {

  reg_write(client, MT9M001_OUTPUT_CONTROL, 0);
  pm_runtime_put(&client->dev);
 }

 mt9m001->streaming = enable;
done:
 mutex_unlock(&mt9m001->mutex);

 return 0;

put_unlock:
 pm_runtime_put(&client->dev);
 mutex_unlock(&mt9m001->mutex);

 return ret;
}
