
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int entity; } ;
struct mipid02_dev {int lock; TYPE_1__ sd; int notifier; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mipid02_set_power_off (struct mipid02_dev*) ;
 int mutex_destroy (int *) ;
 struct mipid02_dev* to_mipid02_dev (struct v4l2_subdev*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;

__attribute__((used)) static int mipid02_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct mipid02_dev *bridge = to_mipid02_dev(sd);

 v4l2_async_notifier_unregister(&bridge->notifier);
 v4l2_async_notifier_cleanup(&bridge->notifier);
 v4l2_async_unregister_subdev(&bridge->sd);
 mipid02_set_power_off(bridge);
 media_entity_cleanup(&bridge->sd.entity);
 mutex_destroy(&bridge->lock);

 return 0;
}
