#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlxsw_sp_nexthop_group {int dummy; } ;
struct TYPE_3__ {struct fib_nh* fib_nh; } ;
struct mlxsw_sp_nexthop {int nh_weight; int /*<<< orphan*/  router_list_node; int /*<<< orphan*/  gw_addr; TYPE_1__ key; struct mlxsw_sp_nexthop_group* nh_grp; } ;
struct mlxsw_sp {TYPE_2__* router; } ;
struct in_device {int dummy; } ;
struct fib_nh {int fib_nh_weight; int fib_nh_flags; int /*<<< orphan*/  fib_nh_gw4; struct net_device* fib_nh_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  nexthop_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in_device*) ; 
 int RTNH_F_LINKDOWN ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*,struct fib_nh*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp,
				  struct mlxsw_sp_nexthop_group *nh_grp,
				  struct mlxsw_sp_nexthop *nh,
				  struct fib_nh *fib_nh)
{
	struct net_device *dev = fib_nh->fib_nh_dev;
	struct in_device *in_dev;
	int err;

	nh->nh_grp = nh_grp;
	nh->key.fib_nh = fib_nh;
#ifdef CONFIG_IP_ROUTE_MULTIPATH
	nh->nh_weight = fib_nh->fib_nh_weight;
#else
	nh->nh_weight = 1;
#endif
	FUNC3(&nh->gw_addr, &fib_nh->fib_nh_gw4, sizeof(fib_nh->fib_nh_gw4));
	err = FUNC6(mlxsw_sp, nh);
	if (err)
		return err;

	FUNC5(mlxsw_sp, nh);
	FUNC2(&nh->router_list_node, &mlxsw_sp->router->nexthop_list);

	if (!dev)
		return 0;

	in_dev = FUNC1(dev);
	if (in_dev && FUNC0(in_dev) &&
	    fib_nh->fib_nh_flags & RTNH_F_LINKDOWN)
		return 0;

	err = FUNC4(mlxsw_sp, nh, fib_nh);
	if (err)
		goto err_nexthop_neigh_init;

	return 0;

err_nexthop_neigh_init:
	FUNC7(mlxsw_sp, nh);
	return err;
}