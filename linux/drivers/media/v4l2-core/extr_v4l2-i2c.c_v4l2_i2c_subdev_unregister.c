
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int fwnode; int of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int i2c_unregister_device (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

void v4l2_i2c_subdev_unregister(struct v4l2_subdev *sd)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 if (client && !client->dev.of_node && !client->dev.fwnode)
  i2c_unregister_device(client);
}
