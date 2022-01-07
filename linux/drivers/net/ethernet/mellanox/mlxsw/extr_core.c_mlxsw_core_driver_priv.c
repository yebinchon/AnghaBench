
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {void* driver_priv; } ;



void *mlxsw_core_driver_priv(struct mlxsw_core *mlxsw_core)
{
 return mlxsw_core->driver_priv;
}
