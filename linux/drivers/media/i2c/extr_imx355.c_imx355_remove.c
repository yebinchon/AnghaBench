
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; int entity; } ;
struct imx355 {int mutex; } ;
struct i2c_client {int dev; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct imx355* to_imx355 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static int imx355_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct imx355 *imx355 = to_imx355(sd);

 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(sd->ctrl_handler);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 mutex_destroy(&imx355->mutex);

 return 0;
}
