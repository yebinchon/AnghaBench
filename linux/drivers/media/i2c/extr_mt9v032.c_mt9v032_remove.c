
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct mt9v032 {int ctrls; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct mt9v032* to_mt9v032 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int mt9v032_remove(struct i2c_client *client)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(client);
 struct mt9v032 *mt9v032 = to_mt9v032(subdev);

 v4l2_async_unregister_subdev(subdev);
 v4l2_ctrl_handler_free(&mt9v032->ctrls);
 media_entity_cleanup(&subdev->entity);

 return 0;
}
