
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {scalar_t__ ops; } ;
struct i2c_client {int dummy; } ;
struct fc2580_dev {struct v4l2_subdev subdev; } ;


 struct fc2580_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct v4l2_subdev *fc2580_get_v4l2_subdev(struct i2c_client *client)
{
 struct fc2580_dev *dev = i2c_get_clientdata(client);

 if (dev->subdev.ops)
  return &dev->subdev;
 else
  return ((void*)0);
}
