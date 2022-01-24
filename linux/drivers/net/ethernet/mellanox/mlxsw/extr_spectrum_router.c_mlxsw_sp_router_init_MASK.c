#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_10__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_8__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_11__ {int /*<<< orphan*/  notifier_call; } ;
struct mlxsw_sp_router {TYPE_2__ inetaddr_nb; TYPE_3__ inet6addr_nb; int /*<<< orphan*/  nexthop_ht; int /*<<< orphan*/  nexthop_group_ht; TYPE_1__ netevent_nb; TYPE_7__ fib_nb; int /*<<< orphan*/  nexthop_list; int /*<<< orphan*/  nexthop_neighs_list; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {struct mlxsw_sp_router* router; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*) ; 
 int FUNC2 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_router*) ; 
 struct mlxsw_sp_router* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_inet6addr_event ; 
 int /*<<< orphan*/  mlxsw_sp_inetaddr_event ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*) ; 
 int FUNC7 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*) ; 
 int FUNC9 (struct mlxsw_sp*) ; 
 int FUNC10 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp*) ; 
 int FUNC12 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlxsw_sp_mr_tcam_ops ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp*) ; 
 int FUNC14 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_nexthop_group_ht_params ; 
 int /*<<< orphan*/  mlxsw_sp_nexthop_ht_params ; 
 int /*<<< orphan*/  FUNC15 (struct mlxsw_sp*) ; 
 int FUNC16 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_router_fib_dump_flush ; 
 int /*<<< orphan*/  mlxsw_sp_router_fib_event ; 
 int /*<<< orphan*/  mlxsw_sp_router_netevent_event ; 
 int /*<<< orphan*/  FUNC17 (struct mlxsw_sp*) ; 
 int FUNC18 (struct mlxsw_sp*) ; 
 int FUNC19 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_3__*) ; 
 int FUNC21 (TYPE_2__*) ; 
 int FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 

int FUNC28(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_router *router;
	int err;

	router = FUNC4(sizeof(*mlxsw_sp->router), GFP_KERNEL);
	if (!router)
		return -ENOMEM;
	mlxsw_sp->router = router;
	router->mlxsw_sp = mlxsw_sp;

	router->inetaddr_nb.notifier_call = mlxsw_sp_inetaddr_event;
	err = FUNC21(&router->inetaddr_nb);
	if (err)
		goto err_register_inetaddr_notifier;

	router->inet6addr_nb.notifier_call = mlxsw_sp_inet6addr_event;
	err = FUNC20(&router->inet6addr_nb);
	if (err)
		goto err_register_inet6addr_notifier;

	FUNC0(&mlxsw_sp->router->nexthop_neighs_list);
	err = FUNC2(mlxsw_sp);
	if (err)
		goto err_router_init;

	err = FUNC16(mlxsw_sp);
	if (err)
		goto err_rifs_init;

	err = FUNC7(mlxsw_sp);
	if (err)
		goto err_ipips_init;

	err = FUNC24(&mlxsw_sp->router->nexthop_ht,
			      &mlxsw_sp_nexthop_ht_params);
	if (err)
		goto err_nexthop_ht_init;

	err = FUNC24(&mlxsw_sp->router->nexthop_group_ht,
			      &mlxsw_sp_nexthop_group_ht_params);
	if (err)
		goto err_nexthop_group_ht_init;

	FUNC0(&mlxsw_sp->router->nexthop_list);
	err = FUNC9(mlxsw_sp);
	if (err)
		goto err_lpm_init;

	err = FUNC12(mlxsw_sp, &mlxsw_sp_mr_tcam_ops);
	if (err)
		goto err_mr_init;

	err = FUNC18(mlxsw_sp);
	if (err)
		goto err_vrs_init;

	err = FUNC14(mlxsw_sp);
	if (err)
		goto err_neigh_init;

	mlxsw_sp->router->netevent_nb.notifier_call =
		mlxsw_sp_router_netevent_event;
	err = FUNC22(&mlxsw_sp->router->netevent_nb);
	if (err)
		goto err_register_netevent_notifier;

	err = FUNC10(mlxsw_sp);
	if (err)
		goto err_mp_hash_init;

	err = FUNC5(mlxsw_sp);
	if (err)
		goto err_dscp_init;

	mlxsw_sp->router->fib_nb.notifier_call = mlxsw_sp_router_fib_event;
	err = FUNC19(&mlxsw_sp->router->fib_nb,
				    mlxsw_sp_router_fib_dump_flush);
	if (err)
		goto err_register_fib_notifier;

	return 0;

err_register_fib_notifier:
err_dscp_init:
err_mp_hash_init:
	FUNC27(&mlxsw_sp->router->netevent_nb);
err_register_netevent_notifier:
	FUNC13(mlxsw_sp);
err_neigh_init:
	FUNC17(mlxsw_sp);
err_vrs_init:
	FUNC11(mlxsw_sp);
err_mr_init:
	FUNC8(mlxsw_sp);
err_lpm_init:
	FUNC23(&mlxsw_sp->router->nexthop_group_ht);
err_nexthop_group_ht_init:
	FUNC23(&mlxsw_sp->router->nexthop_ht);
err_nexthop_ht_init:
	FUNC6(mlxsw_sp);
err_ipips_init:
	FUNC15(mlxsw_sp);
err_rifs_init:
	FUNC1(mlxsw_sp);
err_router_init:
	FUNC25(&router->inet6addr_nb);
err_register_inet6addr_notifier:
	FUNC26(&router->inetaddr_nb);
err_register_inetaddr_notifier:
	FUNC3(mlxsw_sp->router);
	return err;
}