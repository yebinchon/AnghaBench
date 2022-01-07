
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; int ctrl_handler; } ;
struct ov965x {int lock; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static int ov965x_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov965x *ov965x = to_ov965x(sd);

 v4l2_async_unregister_subdev(sd);
 v4l2_ctrl_handler_free(sd->ctrl_handler);
 media_entity_cleanup(&sd->entity);
 mutex_destroy(&ov965x->lock);

 return 0;
}
