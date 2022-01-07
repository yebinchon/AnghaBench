
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int notifier_call; } ;
struct TYPE_10__ {int notifier_call; } ;
struct TYPE_8__ {int notifier_call; } ;
struct TYPE_11__ {int notifier_call; } ;
struct mlxsw_sp_router {TYPE_2__ inetaddr_nb; TYPE_3__ inet6addr_nb; int nexthop_ht; int nexthop_group_ht; TYPE_1__ netevent_nb; TYPE_7__ fib_nb; int nexthop_list; int nexthop_neighs_list; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {struct mlxsw_sp_router* router; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __mlxsw_sp_router_fini (struct mlxsw_sp*) ;
 int __mlxsw_sp_router_init (struct mlxsw_sp*) ;
 int kfree (struct mlxsw_sp_router*) ;
 struct mlxsw_sp_router* kzalloc (int,int ) ;
 int mlxsw_sp_dscp_init (struct mlxsw_sp*) ;
 int mlxsw_sp_inet6addr_event ;
 int mlxsw_sp_inetaddr_event ;
 int mlxsw_sp_ipips_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_ipips_init (struct mlxsw_sp*) ;
 int mlxsw_sp_lpm_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_lpm_init (struct mlxsw_sp*) ;
 int mlxsw_sp_mp_hash_init (struct mlxsw_sp*) ;
 int mlxsw_sp_mr_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_mr_init (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_mr_tcam_ops ;
 int mlxsw_sp_neigh_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_neigh_init (struct mlxsw_sp*) ;
 int mlxsw_sp_nexthop_group_ht_params ;
 int mlxsw_sp_nexthop_ht_params ;
 int mlxsw_sp_rifs_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_rifs_init (struct mlxsw_sp*) ;
 int mlxsw_sp_router_fib_dump_flush ;
 int mlxsw_sp_router_fib_event ;
 int mlxsw_sp_router_netevent_event ;
 int mlxsw_sp_vrs_fini (struct mlxsw_sp*) ;
 int mlxsw_sp_vrs_init (struct mlxsw_sp*) ;
 int register_fib_notifier (TYPE_7__*,int ) ;
 int register_inet6addr_notifier (TYPE_3__*) ;
 int register_inetaddr_notifier (TYPE_2__*) ;
 int register_netevent_notifier (TYPE_1__*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;
 int unregister_inet6addr_notifier (TYPE_3__*) ;
 int unregister_inetaddr_notifier (TYPE_2__*) ;
 int unregister_netevent_notifier (TYPE_1__*) ;

int mlxsw_sp_router_init(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_router *router;
 int err;

 router = kzalloc(sizeof(*mlxsw_sp->router), GFP_KERNEL);
 if (!router)
  return -ENOMEM;
 mlxsw_sp->router = router;
 router->mlxsw_sp = mlxsw_sp;

 router->inetaddr_nb.notifier_call = mlxsw_sp_inetaddr_event;
 err = register_inetaddr_notifier(&router->inetaddr_nb);
 if (err)
  goto err_register_inetaddr_notifier;

 router->inet6addr_nb.notifier_call = mlxsw_sp_inet6addr_event;
 err = register_inet6addr_notifier(&router->inet6addr_nb);
 if (err)
  goto err_register_inet6addr_notifier;

 INIT_LIST_HEAD(&mlxsw_sp->router->nexthop_neighs_list);
 err = __mlxsw_sp_router_init(mlxsw_sp);
 if (err)
  goto err_router_init;

 err = mlxsw_sp_rifs_init(mlxsw_sp);
 if (err)
  goto err_rifs_init;

 err = mlxsw_sp_ipips_init(mlxsw_sp);
 if (err)
  goto err_ipips_init;

 err = rhashtable_init(&mlxsw_sp->router->nexthop_ht,
         &mlxsw_sp_nexthop_ht_params);
 if (err)
  goto err_nexthop_ht_init;

 err = rhashtable_init(&mlxsw_sp->router->nexthop_group_ht,
         &mlxsw_sp_nexthop_group_ht_params);
 if (err)
  goto err_nexthop_group_ht_init;

 INIT_LIST_HEAD(&mlxsw_sp->router->nexthop_list);
 err = mlxsw_sp_lpm_init(mlxsw_sp);
 if (err)
  goto err_lpm_init;

 err = mlxsw_sp_mr_init(mlxsw_sp, &mlxsw_sp_mr_tcam_ops);
 if (err)
  goto err_mr_init;

 err = mlxsw_sp_vrs_init(mlxsw_sp);
 if (err)
  goto err_vrs_init;

 err = mlxsw_sp_neigh_init(mlxsw_sp);
 if (err)
  goto err_neigh_init;

 mlxsw_sp->router->netevent_nb.notifier_call =
  mlxsw_sp_router_netevent_event;
 err = register_netevent_notifier(&mlxsw_sp->router->netevent_nb);
 if (err)
  goto err_register_netevent_notifier;

 err = mlxsw_sp_mp_hash_init(mlxsw_sp);
 if (err)
  goto err_mp_hash_init;

 err = mlxsw_sp_dscp_init(mlxsw_sp);
 if (err)
  goto err_dscp_init;

 mlxsw_sp->router->fib_nb.notifier_call = mlxsw_sp_router_fib_event;
 err = register_fib_notifier(&mlxsw_sp->router->fib_nb,
        mlxsw_sp_router_fib_dump_flush);
 if (err)
  goto err_register_fib_notifier;

 return 0;

err_register_fib_notifier:
err_dscp_init:
err_mp_hash_init:
 unregister_netevent_notifier(&mlxsw_sp->router->netevent_nb);
err_register_netevent_notifier:
 mlxsw_sp_neigh_fini(mlxsw_sp);
err_neigh_init:
 mlxsw_sp_vrs_fini(mlxsw_sp);
err_vrs_init:
 mlxsw_sp_mr_fini(mlxsw_sp);
err_mr_init:
 mlxsw_sp_lpm_fini(mlxsw_sp);
err_lpm_init:
 rhashtable_destroy(&mlxsw_sp->router->nexthop_group_ht);
err_nexthop_group_ht_init:
 rhashtable_destroy(&mlxsw_sp->router->nexthop_ht);
err_nexthop_ht_init:
 mlxsw_sp_ipips_fini(mlxsw_sp);
err_ipips_init:
 mlxsw_sp_rifs_fini(mlxsw_sp);
err_rifs_init:
 __mlxsw_sp_router_fini(mlxsw_sp);
err_router_init:
 unregister_inet6addr_notifier(&router->inet6addr_nb);
err_register_inet6addr_notifier:
 unregister_inetaddr_notifier(&router->inetaddr_nb);
err_register_inetaddr_notifier:
 kfree(mlxsw_sp->router);
 return err;
}
