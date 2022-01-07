
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct et8ek8_sensor {int subdev; } ;
struct et8ek8_gain {int analog; int digital; } ;
typedef size_t s32 ;


 int ET8EK8_REG_8BIT ;
 struct et8ek8_gain* et8ek8_gain_table ;
 int et8ek8_i2c_write_reg (struct i2c_client*,int ,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int et8ek8_set_gain(struct et8ek8_sensor *sensor, s32 gain)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->subdev);
 struct et8ek8_gain new;
 int r;

 new = et8ek8_gain_table[gain];


 r = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT,
    0x124a, new.analog >> 8);
 if (r)
  return r;
 r = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT,
    0x1249, new.analog & 0xff);
 if (r)
  return r;

 r = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT,
    0x124d, new.digital >> 8);
 if (r)
  return r;
 r = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT,
    0x124c, new.digital & 0xff);

 return r;
}
