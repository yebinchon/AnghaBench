
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 unsigned char COM7_RESET ;
 unsigned char REG_COM7 ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,unsigned char) ;
 int msleep (int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_write_smbus(struct v4l2_subdev *sd, unsigned char reg,
  unsigned char value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = i2c_smbus_write_byte_data(client, reg, value);

 if (reg == REG_COM7 && (value & COM7_RESET))
  msleep(5);
 return ret;
}
