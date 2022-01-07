
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9p031 {int ctrls; int subdev; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int mt9p031_power_off (struct mt9p031*) ;
 int mt9p031_power_on (struct mt9p031*) ;
 int mt9p031_reset (struct mt9p031*) ;
 int v4l2_ctrl_handler_setup (int *) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int __mt9p031_set_power(struct mt9p031 *mt9p031, bool on)
{
 struct i2c_client *client = v4l2_get_subdevdata(&mt9p031->subdev);
 int ret;

 if (!on) {
  mt9p031_power_off(mt9p031);
  return 0;
 }

 ret = mt9p031_power_on(mt9p031);
 if (ret < 0)
  return ret;

 ret = mt9p031_reset(mt9p031);
 if (ret < 0) {
  dev_err(&client->dev, "Failed to reset the camera\n");
  return ret;
 }

 return v4l2_ctrl_handler_setup(&mt9p031->ctrls);
}
