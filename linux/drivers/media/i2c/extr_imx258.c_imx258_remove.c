
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct imx258 {int dummy; } ;
struct i2c_client {int dev; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int imx258_free_controls (struct imx258*) ;
 int media_entity_cleanup (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct imx258* to_imx258 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int imx258_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct imx258 *imx258 = to_imx258(sd);

 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 imx258_free_controls(imx258);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 return 0;
}
