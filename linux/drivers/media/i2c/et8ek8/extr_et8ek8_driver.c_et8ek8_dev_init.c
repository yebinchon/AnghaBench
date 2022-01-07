
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dev; } ;
struct et8ek8_sensor {int version; int format; int current_reglist; } ;


 int ENODEV ;
 int ET8EK8_NAME ;
 int ET8EK8_REGLIST_MODE ;
 int ET8EK8_REGLIST_POWERON ;
 int ET8EK8_REG_8BIT ;
 int ET8EK8_REV_1 ;
 int ET8EK8_REV_2 ;
 int REG_REVISION_NUMBER_H ;
 int REG_REVISION_NUMBER_L ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int et8ek8_g_priv_mem (struct v4l2_subdev*) ;
 int et8ek8_i2c_read_reg (struct i2c_client*,int ,int ,int*) ;
 int et8ek8_i2c_reglist_find_write (struct i2c_client*,int *,int ) ;
 int et8ek8_power_off (struct et8ek8_sensor*) ;
 int et8ek8_power_on (struct et8ek8_sensor*) ;
 int et8ek8_reglist_find_type (int *,int ) ;
 int et8ek8_reglist_import (struct i2c_client*,int *) ;
 int et8ek8_reglist_to_mbus (int ,int *) ;
 int et8ek8_stream_off (struct et8ek8_sensor*) ;
 int et8ek8_stream_on (struct et8ek8_sensor*) ;
 int meta_reglist ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_dev_init(struct v4l2_subdev *subdev)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 int rval, rev_l, rev_h;

 rval = et8ek8_power_on(sensor);
 if (rval) {
  dev_err(&client->dev, "could not power on\n");
  return rval;
 }

 rval = et8ek8_i2c_read_reg(client, ET8EK8_REG_8BIT,
       REG_REVISION_NUMBER_L, &rev_l);
 if (!rval)
  rval = et8ek8_i2c_read_reg(client, ET8EK8_REG_8BIT,
        REG_REVISION_NUMBER_H, &rev_h);
 if (rval) {
  dev_err(&client->dev, "no et8ek8 sensor detected\n");
  goto out_poweroff;
 }

 sensor->version = (rev_h << 8) + rev_l;
 if (sensor->version != ET8EK8_REV_1 && sensor->version != ET8EK8_REV_2)
  dev_info(&client->dev,
    "unknown version 0x%x detected, continuing anyway\n",
    sensor->version);

 rval = et8ek8_reglist_import(client, &meta_reglist);
 if (rval) {
  dev_err(&client->dev,
   "invalid register list %s, import failed\n",
   ET8EK8_NAME);
  goto out_poweroff;
 }

 sensor->current_reglist = et8ek8_reglist_find_type(&meta_reglist,
          ET8EK8_REGLIST_MODE);
 if (!sensor->current_reglist) {
  dev_err(&client->dev,
   "invalid register list %s, no mode found\n",
   ET8EK8_NAME);
  rval = -ENODEV;
  goto out_poweroff;
 }

 et8ek8_reglist_to_mbus(sensor->current_reglist, &sensor->format);

 rval = et8ek8_i2c_reglist_find_write(client, &meta_reglist,
          ET8EK8_REGLIST_POWERON);
 if (rval) {
  dev_err(&client->dev,
   "invalid register list %s, no POWERON mode found\n",
   ET8EK8_NAME);
  goto out_poweroff;
 }
 rval = et8ek8_stream_on(sensor);
 if (rval)
  goto out_poweroff;
 rval = et8ek8_g_priv_mem(subdev);
 if (rval)
  dev_warn(&client->dev,
   "can not read OTP (EEPROM) memory from sensor\n");
 rval = et8ek8_stream_off(sensor);
 if (rval)
  goto out_poweroff;

 rval = et8ek8_power_off(sensor);
 if (rval)
  goto out_poweroff;

 return 0;

out_poweroff:
 et8ek8_power_off(sensor);

 return rval;
}
