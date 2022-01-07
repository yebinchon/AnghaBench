
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct ov13858 {int dummy; } ;
struct i2c_client {int dev; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int ov13858_free_controls (struct ov13858*) ;
 int pm_runtime_disable (int *) ;
 struct ov13858* to_ov13858 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov13858_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov13858 *ov13858 = to_ov13858(sd);

 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 ov13858_free_controls(ov13858);

 pm_runtime_disable(&client->dev);

 return 0;
}
