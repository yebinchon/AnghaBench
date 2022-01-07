
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_driver {int list; } ;


 int list_del (int *) ;
 int mlxsw_core_driver_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlxsw_core_driver_unregister(struct mlxsw_driver *mlxsw_driver)
{
 spin_lock(&mlxsw_core_driver_list_lock);
 list_del(&mlxsw_driver->list);
 spin_unlock(&mlxsw_core_driver_list_lock);
}
