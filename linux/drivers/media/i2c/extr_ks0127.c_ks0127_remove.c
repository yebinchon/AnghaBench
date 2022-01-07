
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int KS_CMDA ;
 int KS_OFMTA ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int ks0127_write (struct v4l2_subdev*,int ,int) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int ks0127_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);

 v4l2_device_unregister_subdev(sd);
 ks0127_write(sd, KS_OFMTA, 0x20);
 ks0127_write(sd, KS_CMDA, 0x2c | 0x80);
 return 0;
}
