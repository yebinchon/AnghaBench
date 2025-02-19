
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct et8ek8_sensor {int subdev; } ;
typedef int s32 ;


 int ET8EK8_REG_8BIT ;
 int et8ek8_i2c_write_reg (struct i2c_client*,int ,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int et8ek8_set_test_pattern(struct et8ek8_sensor *sensor, s32 mode)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);
 int cbh_mode, cbv_mode, tp_mode, din_sw, r1420, rval;


 cbh_mode = 0;
 cbv_mode = 0;
 tp_mode = 0;
 din_sw = 0x00;
 r1420 = 0xF0;

 if (mode) {

  if (mode < 5) {
   cbh_mode = 1;
   cbv_mode = 1;
   tp_mode = mode + 3;
  } else {
   cbh_mode = 0;
   cbv_mode = 0;
   tp_mode = mode - 4 + 3;
  }

  din_sw = 0x01;
  r1420 = 0xE0;
 }

 rval = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x111B,
        tp_mode << 4);
 if (rval)
  return rval;

 rval = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x1121,
        cbh_mode << 7);
 if (rval)
  return rval;

 rval = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x1124,
        cbv_mode << 7);
 if (rval)
  return rval;

 rval = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x112C, din_sw);
 if (rval)
  return rval;

 return et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x1420, r1420);
}
