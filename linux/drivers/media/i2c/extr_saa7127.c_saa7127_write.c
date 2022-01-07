
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7127_write(struct v4l2_subdev *sd, u8 reg, u8 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int i;

 for (i = 0; i < 3; i++) {
  if (i2c_smbus_write_byte_data(client, reg, val) == 0)
   return 0;
 }
 v4l2_err(sd, "I2C Write Problem\n");
 return -1;
}
