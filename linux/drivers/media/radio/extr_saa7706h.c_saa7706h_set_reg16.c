
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int saa7706h_i2c_send (struct i2c_client*,int*,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7706h_set_reg16(struct v4l2_subdev *sd, u16 reg, u16 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 buf[4];
 int pos = 0;

 buf[pos++] = reg >> 8;
 buf[pos++] = reg;
 buf[pos++] = val >> 8;
 buf[pos++] = val;

 return saa7706h_i2c_send(client, buf, pos);
}
