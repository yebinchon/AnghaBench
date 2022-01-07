
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct i2c_client {int dev; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int pm_runtime_disable (int *) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6a3_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);

 pm_runtime_disable(&client->dev);
 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 return 0;
}
