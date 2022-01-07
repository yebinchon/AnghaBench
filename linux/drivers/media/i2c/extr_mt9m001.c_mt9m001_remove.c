
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct mt9m001 {int mutex; int hdl; TYPE_1__ subdev; } ;
struct i2c_client {int dev; } ;


 int media_entity_cleanup (int *) ;
 int mt9m001_power_off (int *) ;
 int mutex_destroy (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (TYPE_1__*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int mt9m001_remove(struct i2c_client *client)
{
 struct mt9m001 *mt9m001 = to_mt9m001(client);

 pm_runtime_get_sync(&client->dev);

 v4l2_async_unregister_subdev(&mt9m001->subdev);
 media_entity_cleanup(&mt9m001->subdev.entity);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);
 mt9m001_power_off(&client->dev);

 v4l2_ctrl_handler_free(&mt9m001->hdl);
 mutex_destroy(&mt9m001->mutex);

 return 0;
}
