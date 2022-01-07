
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct ov7251 {int lock; int ctrls; TYPE_1__ sd; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov7251_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov7251 *ov7251 = to_ov7251(sd);

 v4l2_async_unregister_subdev(&ov7251->sd);
 media_entity_cleanup(&ov7251->sd.entity);
 v4l2_ctrl_handler_free(&ov7251->ctrls);
 mutex_destroy(&ov7251->lock);

 return 0;
}
