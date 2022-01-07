
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct ov5645 {int power_lock; int ctrls; TYPE_1__ sd; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov5645* to_ov5645 (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov5645_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov5645 *ov5645 = to_ov5645(sd);

 v4l2_async_unregister_subdev(&ov5645->sd);
 media_entity_cleanup(&ov5645->sd.entity);
 v4l2_ctrl_handler_free(&ov5645->ctrls);
 mutex_destroy(&ov5645->power_lock);

 return 0;
}
