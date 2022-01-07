
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct si4713_device {scalar_t__ power_state; int pd; } ;
struct i2c_client {int dummy; } ;


 int POWER_DOWN ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int platform_device_unregister (int ) ;
 int si4713_set_power_state (struct si4713_device*,int ) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct si4713_device *sdev = to_si4713_device(sd);

 platform_device_unregister(sdev->pd);

 if (sdev->power_state)
  si4713_set_power_state(sdev, POWER_DOWN);

 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(sd->ctrl_handler);

 return 0;
}
