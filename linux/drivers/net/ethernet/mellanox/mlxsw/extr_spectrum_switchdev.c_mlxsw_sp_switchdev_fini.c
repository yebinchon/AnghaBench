
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* bridge; } ;
struct TYPE_2__ {int bridges_list; } ;


 int WARN_ON (int) ;
 int kfree (TYPE_1__*) ;
 int list_empty (int *) ;
 int mlxsw_sp_fdb_fini (struct mlxsw_sp*) ;

void mlxsw_sp_switchdev_fini(struct mlxsw_sp *mlxsw_sp)
{
 mlxsw_sp_fdb_fini(mlxsw_sp);
 WARN_ON(!list_empty(&mlxsw_sp->bridge->bridges_list));
 kfree(mlxsw_sp->bridge);
}
