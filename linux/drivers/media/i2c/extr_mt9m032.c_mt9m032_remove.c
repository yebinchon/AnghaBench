
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct mt9m032 {int lock; int ctrls; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct mt9m032* to_mt9m032 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m032_remove(struct i2c_client *client)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(client);
 struct mt9m032 *sensor = to_mt9m032(subdev);

 v4l2_device_unregister_subdev(subdev);
 v4l2_ctrl_handler_free(&sensor->ctrls);
 media_entity_cleanup(&subdev->entity);
 mutex_destroy(&sensor->lock);
 return 0;
}
