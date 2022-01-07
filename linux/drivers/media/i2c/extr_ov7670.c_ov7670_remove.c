
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct ov7670_info {TYPE_1__ sd; int hdl; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int ov7670_power_off (struct v4l2_subdev*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov7670_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov7670_info *info = to_state(sd);

 v4l2_async_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&info->hdl);
 media_entity_cleanup(&info->sd.entity);
 ov7670_power_off(sd);
 return 0;
}
