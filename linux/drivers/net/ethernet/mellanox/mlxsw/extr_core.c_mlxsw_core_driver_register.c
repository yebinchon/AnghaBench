
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_driver {int list; } ;


 int list_add_tail (int *,int *) ;
 int mlxsw_core_driver_list ;
 int mlxsw_core_driver_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mlxsw_core_driver_register(struct mlxsw_driver *mlxsw_driver)
{
 spin_lock(&mlxsw_core_driver_list_lock);
 list_add_tail(&mlxsw_driver->list, &mlxsw_core_driver_list);
 spin_unlock(&mlxsw_core_driver_list_lock);
 return 0;
}
