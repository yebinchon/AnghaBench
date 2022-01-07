
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;
struct camif_dev {TYPE_1__ sensor; } ;


 int i2c_put_adapter (struct i2c_adapter*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void camif_unregister_sensor(struct camif_dev *camif)
{
 struct v4l2_subdev *sd = camif->sensor.sd;
 struct i2c_client *client = sd ? v4l2_get_subdevdata(sd) : ((void*)0);
 struct i2c_adapter *adapter;

 if (client == ((void*)0))
  return;

 adapter = client->adapter;
 v4l2_device_unregister_subdev(sd);
 camif->sensor.sd = ((void*)0);
 i2c_unregister_device(client);
 i2c_put_adapter(adapter);
}
