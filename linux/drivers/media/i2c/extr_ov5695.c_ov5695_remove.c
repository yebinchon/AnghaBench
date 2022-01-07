
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct ov5695 {int mutex; int ctrl_handler; } ;
struct i2c_client {int dev; } ;


 int __ov5695_power_off (struct ov5695*) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_status_suspended (int *) ;
 struct ov5695* to_ov5695 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov5695_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov5695 *ov5695 = to_ov5695(sd);

 v4l2_async_unregister_subdev(sd);



 v4l2_ctrl_handler_free(&ov5695->ctrl_handler);
 mutex_destroy(&ov5695->mutex);

 pm_runtime_disable(&client->dev);
 if (!pm_runtime_status_suspended(&client->dev))
  __ov5695_power_off(ov5695);
 pm_runtime_set_suspended(&client->dev);

 return 0;
}
