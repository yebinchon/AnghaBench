
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_driver {int dummy; } ;


 struct mlxsw_driver* __driver_find (char const*) ;
 int mlxsw_core_driver_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct mlxsw_driver *mlxsw_core_driver_get(const char *kind)
{
 struct mlxsw_driver *mlxsw_driver;

 spin_lock(&mlxsw_core_driver_list_lock);
 mlxsw_driver = __driver_find(kind);
 spin_unlock(&mlxsw_core_driver_list_lock);
 return mlxsw_driver;
}
