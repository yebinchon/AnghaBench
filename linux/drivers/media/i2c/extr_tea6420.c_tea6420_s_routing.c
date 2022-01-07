
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int debug ;
 int i2c_smbus_write_byte (struct i2c_client*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tea6420_s_routing(struct v4l2_subdev *sd,
        u32 i, u32 o, u32 config)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int g = (o >> 4) & 0xf;
 u8 byte;
 int ret;

 o &= 0xf;
 v4l2_dbg(1, debug, sd, "i=%d, o=%d, g=%d\n", i, o, g);


 if (i < 1 || i > 6 || o < 1 || o > 4 || g < 0 || g > 6 || g % 2 != 0)
  return -EINVAL;

 byte = ((o - 1) << 5);
 byte |= (i - 1);


 switch (g) {
 case 0:
  byte |= (3 << 3);
  break;
 case 2:
  byte |= (2 << 3);
  break;
 case 4:
  byte |= (1 << 3);
  break;
 case 6:
  break;
 }

 ret = i2c_smbus_write_byte(client, byte);
 if (ret) {
  v4l2_dbg(1, debug, sd,
   "i2c_smbus_write_byte() failed, ret:%d\n", ret);
  return -EIO;
 }
 return 0;
}
