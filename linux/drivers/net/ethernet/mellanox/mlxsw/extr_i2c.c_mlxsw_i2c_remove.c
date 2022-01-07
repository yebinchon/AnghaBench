
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct mlxsw_i2c {TYPE_1__ cmd; int core; } ;
struct i2c_client {int dummy; } ;


 struct mlxsw_i2c* i2c_get_clientdata (struct i2c_client*) ;
 int mlxsw_core_bus_device_unregister (int ,int) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int mlxsw_i2c_remove(struct i2c_client *client)
{
 struct mlxsw_i2c *mlxsw_i2c = i2c_get_clientdata(client);

 mlxsw_core_bus_device_unregister(mlxsw_i2c->core, 0);
 mutex_destroy(&mlxsw_i2c->cmd.lock);

 return 0;
}
