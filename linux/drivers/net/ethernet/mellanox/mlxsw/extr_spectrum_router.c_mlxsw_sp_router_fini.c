
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int inetaddr_nb; int inet6addr_nb; int nexthop_ht; int nexthop_group_ht; int netevent_nb; int fib_nb; } ;


 int __mlxsw_sp_router_fini (struct mlxsw_sp*) ;
 int kfree (TYPE_1__*) ;
 int mlxsw_sp_ipips_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_lpm_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_mr_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_neigh_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_rifs_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_vrs_fini (struct mlxsw_sp*) ;
 int rhashtable_destroy (int *) ;
 int unregister_fib_notifier (int *) ;
 int unregister_inet6addr_notifier (int *) ;
 int unregister_inetaddr_notifier (int *) ;
 int unregister_netevent_notifier (int *) ;

void mlxsw_sp_router_fini(struct mlxsw_sp *mlxsw_sp)
{
 unregister_fib_notifier(&mlxsw_sp->router->fib_nb);
 unregister_netevent_notifier(&mlxsw_sp->router->netevent_nb);
 mlxsw_sp_neigh_fini(mlxsw_sp);
 mlxsw_sp_vrs_fini(mlxsw_sp);
 mlxsw_sp_mr_fini(mlxsw_sp);
 mlxsw_sp_lpm_fini(mlxsw_sp);
 rhashtable_destroy(&mlxsw_sp->router->nexthop_group_ht);
 rhashtable_destroy(&mlxsw_sp->router->nexthop_ht);
 mlxsw_sp_ipips_fini(mlxsw_sp);
 mlxsw_sp_rifs_fini(mlxsw_sp);
 __mlxsw_sp_router_fini(mlxsw_sp);
 unregister_inet6addr_notifier(&mlxsw_sp->router->inet6addr_nb);
 unregister_inetaddr_notifier(&mlxsw_sp->router->inetaddr_nb);
 kfree(mlxsw_sp->router);
}
