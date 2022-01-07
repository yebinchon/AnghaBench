
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,int*,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int vs6624_write(struct v4l2_subdev *sd, u16 index,
    u8 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 u8 buf[3];

 buf[0] = index >> 8;
 buf[1] = index;
 buf[2] = value;

 return i2c_master_send(client, buf, 3);
}
