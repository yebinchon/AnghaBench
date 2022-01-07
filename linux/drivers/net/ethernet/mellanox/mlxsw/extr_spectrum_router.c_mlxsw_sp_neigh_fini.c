
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp {TYPE_2__* router; } ;
struct TYPE_3__ {int dw; } ;
struct TYPE_4__ {int neigh_ht; int nexthop_probe_dw; TYPE_1__ neighs_update; } ;


 int cancel_delayed_work_sync (int *) ;
 int rhashtable_destroy (int *) ;

__attribute__((used)) static void mlxsw_sp_neigh_fini(struct mlxsw_sp *mlxsw_sp)
{
 cancel_delayed_work_sync(&mlxsw_sp->router->neighs_update.dw);
 cancel_delayed_work_sync(&mlxsw_sp->router->nexthop_probe_dw);
 rhashtable_destroy(&mlxsw_sp->router->neigh_ht);
}
