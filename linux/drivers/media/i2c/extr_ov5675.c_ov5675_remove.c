
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; int entity; } ;
struct ov5675 {int mutex; } ;
struct i2c_client {int dev; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int pm_runtime_disable (int *) ;
 struct ov5675* to_ov5675 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static int ov5675_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov5675 *ov5675 = to_ov5675(sd);

 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(sd->ctrl_handler);
 pm_runtime_disable(&client->dev);
 mutex_destroy(&ov5675->mutex);

 return 0;
}
