
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct mt9t001 {int ctrls; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct mt9t001* to_mt9t001 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t001_remove(struct i2c_client *client)
{
 struct v4l2_subdev *subdev = i2c_get_clientdata(client);
 struct mt9t001 *mt9t001 = to_mt9t001(subdev);

 v4l2_ctrl_handler_free(&mt9t001->ctrls);
 v4l2_device_unregister_subdev(subdev);
 media_entity_cleanup(&subdev->entity);
 return 0;
}
