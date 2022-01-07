
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef int buf ;


 int i2c_master_recv (struct i2c_client*,int*,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static u8 upd64031a_read(struct v4l2_subdev *sd, u8 reg)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 buf[2];

 if (reg >= sizeof(buf))
  return 0xff;
 i2c_master_recv(client, buf, 2);
 return buf[reg];
}
