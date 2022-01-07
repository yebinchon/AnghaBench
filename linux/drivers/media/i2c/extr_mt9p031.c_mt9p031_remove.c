
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct mt9p031 {int power_lock; int ctrls; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct mt9p031* to_mt9p031 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int mt9p031_remove(struct i2c_client *client)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(client);
 struct mt9p031 *mt9p031 = to_mt9p031(subdev);

 v4l2_ctrl_handler_free(&mt9p031->ctrls);
 v4l2_async_unregister_subdev(subdev);
 media_entity_cleanup(&subdev->entity);
 mutex_destroy(&mt9p031->power_lock);

 return 0;
}
