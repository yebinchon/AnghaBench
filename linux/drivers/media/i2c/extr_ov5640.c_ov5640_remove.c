
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int handler; } ;
struct TYPE_4__ {int entity; } ;
struct ov5640_dev {TYPE_1__ ctrls; TYPE_2__ sd; int lock; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov5640_dev* to_ov5640_dev (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (TYPE_2__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int ov5640_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov5640_dev *sensor = to_ov5640_dev(sd);

 v4l2_async_unregister_subdev(&sensor->sd);
 mutex_destroy(&sensor->lock);
 media_entity_cleanup(&sensor->sd.entity);
 v4l2_ctrl_handler_free(&sensor->ctrls.handler);

 return 0;
}
