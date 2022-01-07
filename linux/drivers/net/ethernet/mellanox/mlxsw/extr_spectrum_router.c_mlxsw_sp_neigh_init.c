
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp {TYPE_2__* router; } ;
struct TYPE_3__ {int dw; } ;
struct TYPE_4__ {int nexthop_probe_dw; TYPE_1__ neighs_update; int neigh_ht; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int mlxsw_core_schedule_dw (int *,int ) ;
 int mlxsw_sp_neigh_ht_params ;
 int mlxsw_sp_router_neighs_update_interval_init (struct mlxsw_sp*) ;
 int mlxsw_sp_router_neighs_update_work ;
 int mlxsw_sp_router_probe_unresolved_nexthops ;
 int rhashtable_init (int *,int *) ;

__attribute__((used)) static int mlxsw_sp_neigh_init(struct mlxsw_sp *mlxsw_sp)
{
 int err;

 err = rhashtable_init(&mlxsw_sp->router->neigh_ht,
         &mlxsw_sp_neigh_ht_params);
 if (err)
  return err;




 mlxsw_sp_router_neighs_update_interval_init(mlxsw_sp);


 INIT_DELAYED_WORK(&mlxsw_sp->router->neighs_update.dw,
     mlxsw_sp_router_neighs_update_work);
 INIT_DELAYED_WORK(&mlxsw_sp->router->nexthop_probe_dw,
     mlxsw_sp_router_probe_unresolved_nexthops);
 mlxsw_core_schedule_dw(&mlxsw_sp->router->neighs_update.dw, 0);
 mlxsw_core_schedule_dw(&mlxsw_sp->router->nexthop_probe_dw, 0);
 return 0;
}
