
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7185 {int* reg; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int saa7185_write (struct v4l2_subdev*,int,int) ;
 struct saa7185* to_saa7185 (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7185_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct saa7185 *encoder = to_saa7185(sd);

 v4l2_device_unregister_subdev(sd);

 saa7185_write(sd, 0x61, (encoder->reg[0x61]) | 0x40);
 return 0;
}
