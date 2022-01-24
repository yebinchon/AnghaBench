#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_nexthop {int /*<<< orphan*/  type; } ;
struct mlxsw_sp_ipip_ops {scalar_t__ (* can_offload ) (struct mlxsw_sp*,struct net_device*,int /*<<< orphan*/ ) ;} ;
struct mlxsw_sp_ipip_entry {size_t ipipt; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct fib_nh {struct net_device* fib_nh_dev; } ;
struct TYPE_2__ {struct mlxsw_sp_ipip_ops** ipip_ops_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_L3_PROTO_IPV4 ; 
 int /*<<< orphan*/  MLXSW_SP_NEXTHOP_TYPE_ETH ; 
 int /*<<< orphan*/  MLXSW_SP_NEXTHOP_TYPE_IPIP ; 
 struct mlxsw_sp_ipip_entry* FUNC0 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*,struct mlxsw_sp_ipip_entry*) ; 
 int FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_nexthop*,struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif* FUNC5 (struct mlxsw_sp*,struct net_device*) ; 
 scalar_t__ FUNC6 (struct mlxsw_sp*,struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_nexthop *nh,
				       struct fib_nh *fib_nh)
{
	const struct mlxsw_sp_ipip_ops *ipip_ops;
	struct net_device *dev = fib_nh->fib_nh_dev;
	struct mlxsw_sp_ipip_entry *ipip_entry;
	struct mlxsw_sp_rif *rif;
	int err;

	ipip_entry = FUNC0(mlxsw_sp, dev);
	if (ipip_entry) {
		ipip_ops = mlxsw_sp->router->ipip_ops_arr[ipip_entry->ipipt];
		if (ipip_ops->can_offload(mlxsw_sp, dev,
					  MLXSW_SP_L3_PROTO_IPV4)) {
			nh->type = MLXSW_SP_NEXTHOP_TYPE_IPIP;
			FUNC1(mlxsw_sp, nh, ipip_entry);
			return 0;
		}
	}

	nh->type = MLXSW_SP_NEXTHOP_TYPE_ETH;
	rif = FUNC5(mlxsw_sp, dev);
	if (!rif)
		return 0;

	FUNC4(nh, rif);
	err = FUNC2(mlxsw_sp, nh);
	if (err)
		goto err_neigh_init;

	return 0;

err_neigh_init:
	FUNC3(nh);
	return err;
}