
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {int owner; } ;


 struct i2c_client* i2c_new_device (struct i2c_adapter*,struct i2c_board_info*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int request_module (int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct i2c_client *smi_add_i2c_client(struct i2c_adapter *adapter,
   struct i2c_board_info *info)
{
 struct i2c_client *client;

 request_module(info->type);
 client = i2c_new_device(adapter, info);
 if (client == ((void*)0) || client->dev.driver == ((void*)0))
  goto err_add_i2c_client;

 if (!try_module_get(client->dev.driver->owner)) {
  i2c_unregister_device(client);
  goto err_add_i2c_client;
 }
 return client;

err_add_i2c_client:
 client = ((void*)0);
 return client;
}
