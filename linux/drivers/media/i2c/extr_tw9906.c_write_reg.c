
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int write_reg(struct v4l2_subdev *sd, u8 reg, u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 return i2c_smbus_write_byte_data(client, reg, value);
}
