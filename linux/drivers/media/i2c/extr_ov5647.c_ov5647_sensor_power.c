
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov5647 {int power_count; int lock; int xclk; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int WARN_ON (int) ;
 int __sensor_init (struct v4l2_subdev*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5647_write_array (struct v4l2_subdev*,int ,int ) ;
 int sensor_oe_disable_regs ;
 int sensor_oe_enable_regs ;
 int set_sw_standby (struct v4l2_subdev*,int) ;
 struct ov5647* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5647_sensor_power(struct v4l2_subdev *sd, int on)
{
 int ret = 0;
 struct ov5647 *ov5647 = to_state(sd);
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 mutex_lock(&ov5647->lock);

 if (on && !ov5647->power_count) {
  dev_dbg(&client->dev, "OV5647 power on\n");

  ret = clk_prepare_enable(ov5647->xclk);
  if (ret < 0) {
   dev_err(&client->dev, "clk prepare enable failed\n");
   goto out;
  }

  ret = ov5647_write_array(sd, sensor_oe_enable_regs,
    ARRAY_SIZE(sensor_oe_enable_regs));
  if (ret < 0) {
   clk_disable_unprepare(ov5647->xclk);
   dev_err(&client->dev,
    "write sensor_oe_enable_regs error\n");
   goto out;
  }

  ret = __sensor_init(sd);
  if (ret < 0) {
   clk_disable_unprepare(ov5647->xclk);
   dev_err(&client->dev,
    "Camera not available, check Power\n");
   goto out;
  }
 } else if (!on && ov5647->power_count == 1) {
  dev_dbg(&client->dev, "OV5647 power off\n");

  ret = ov5647_write_array(sd, sensor_oe_disable_regs,
    ARRAY_SIZE(sensor_oe_disable_regs));

  if (ret < 0)
   dev_dbg(&client->dev, "disable oe failed\n");

  ret = set_sw_standby(sd, 1);

  if (ret < 0)
   dev_dbg(&client->dev, "soft stby failed\n");

  clk_disable_unprepare(ov5647->xclk);
 }


 ov5647->power_count += on ? 1 : -1;
 WARN_ON(ov5647->power_count < 0);

out:
 mutex_unlock(&ov5647->lock);

 return ret;
}
