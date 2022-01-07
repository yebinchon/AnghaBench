
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct ov2659 {int lock; int ctrls; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov2659* to_ov2659 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov2659_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov2659 *ov2659 = to_ov2659(sd);

 v4l2_ctrl_handler_free(&ov2659->ctrls);
 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 mutex_destroy(&ov2659->lock);

 return 0;
}
