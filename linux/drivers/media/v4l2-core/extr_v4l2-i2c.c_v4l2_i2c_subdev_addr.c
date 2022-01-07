
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {unsigned short addr; } ;


 unsigned short I2C_CLIENT_END ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

unsigned short v4l2_i2c_subdev_addr(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 return client ? client->addr : I2C_CLIENT_END;
}
