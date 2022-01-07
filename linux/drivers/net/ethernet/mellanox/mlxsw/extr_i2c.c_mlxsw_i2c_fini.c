
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_i2c {int * core; } ;



__attribute__((used)) static void mlxsw_i2c_fini(void *bus_priv)
{
 struct mlxsw_i2c *mlxsw_i2c = bus_priv;

 mlxsw_i2c->core = ((void*)0);
}
