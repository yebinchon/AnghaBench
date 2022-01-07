
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_3__ {int owner; } ;


 int i2c_unregister_device (struct i2c_client*) ;
 int module_put (int ) ;

__attribute__((used)) static void smi_del_i2c_client(struct i2c_client *client)
{
 module_put(client->dev.driver->owner);
 i2c_unregister_device(client);
}
