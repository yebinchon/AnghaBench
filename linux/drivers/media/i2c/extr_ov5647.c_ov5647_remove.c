
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct ov5647 {int lock; TYPE_1__ sd; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct ov5647* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5647_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov5647 *ov5647 = to_state(sd);

 v4l2_async_unregister_subdev(&ov5647->sd);
 media_entity_cleanup(&ov5647->sd.entity);
 v4l2_device_unregister_subdev(sd);
 mutex_destroy(&ov5647->lock);

 return 0;
}
