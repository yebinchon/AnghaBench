
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_ops {int dummy; } ;
struct v4l2_subdev {TYPE_2__* dev; int owner; int flags; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_3__ {int owner; } ;


 int V4L2_SUBDEV_FL_IS_I2C ;
 int i2c_set_clientdata (struct i2c_client*,struct v4l2_subdev*) ;
 int v4l2_i2c_subdev_set_name (struct v4l2_subdev*,struct i2c_client*,int *,int *) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct i2c_client*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,struct v4l2_subdev_ops const*) ;

void v4l2_i2c_subdev_init(struct v4l2_subdev *sd, struct i2c_client *client,
     const struct v4l2_subdev_ops *ops)
{
 v4l2_subdev_init(sd, ops);
 sd->flags |= V4L2_SUBDEV_FL_IS_I2C;

 sd->owner = client->dev.driver->owner;
 sd->dev = &client->dev;

 v4l2_set_subdevdata(sd, client);
 i2c_set_clientdata(client, sd);
 v4l2_i2c_subdev_set_name(sd, client, ((void*)0), ((void*)0));
}
