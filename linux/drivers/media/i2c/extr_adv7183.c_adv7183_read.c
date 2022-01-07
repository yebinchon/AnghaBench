
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned char) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline int adv7183_read(struct v4l2_subdev *sd, unsigned char reg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 return i2c_smbus_read_byte_data(client, reg);
}
