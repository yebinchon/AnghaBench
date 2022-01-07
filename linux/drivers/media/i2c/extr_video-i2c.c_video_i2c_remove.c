
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_i2c_data {int vdev; TYPE_1__* chip; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int (* set_power ) (struct video_i2c_data*,int) ;} ;


 struct video_i2c_data* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int stub1 (struct video_i2c_data*,int) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int video_i2c_remove(struct i2c_client *client)
{
 struct video_i2c_data *data = i2c_get_clientdata(client);

 pm_runtime_get_sync(&client->dev);
 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 if (data->chip->set_power)
  data->chip->set_power(data, 0);

 video_unregister_device(&data->vdev);

 return 0;
}
