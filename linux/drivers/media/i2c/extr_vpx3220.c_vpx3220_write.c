
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct vpx3220 {size_t* reg; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct vpx3220* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,size_t,size_t) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static inline int vpx3220_write(struct v4l2_subdev *sd, u8 reg, u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct vpx3220 *decoder = i2c_get_clientdata(client);

 decoder->reg[reg] = value;
 return i2c_smbus_write_byte_data(client, reg, value);
}
