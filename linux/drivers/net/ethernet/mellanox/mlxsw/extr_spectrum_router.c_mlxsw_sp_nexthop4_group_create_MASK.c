#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlxsw_sp_nexthop_group {unsigned int count; struct mlxsw_sp_nexthop* nexthops; int /*<<< orphan*/  gateway; int /*<<< orphan*/ * neigh_tbl; int /*<<< orphan*/  fib_list; struct fib_info* priv; } ;
struct mlxsw_sp_nexthop {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct fib_nh {int dummy; } ;
struct fib_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_nexthop_group* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC2 (struct fib_info*) ; 
 struct fib_nh* FUNC3 (struct fib_info*,int) ; 
 unsigned int FUNC4 (struct fib_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fib_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_nexthop_group*) ; 
 struct mlxsw_sp_nexthop_group* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*,struct fib_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int FUNC10 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*,struct mlxsw_sp_nexthop*,struct fib_nh*) ; 
 int FUNC11 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ; 
 int /*<<< orphan*/  nexthops ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp_nexthop_group*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct mlxsw_sp_nexthop_group *
FUNC14(struct mlxsw_sp *mlxsw_sp, struct fib_info *fi)
{
	unsigned int nhs = FUNC4(fi);
	struct mlxsw_sp_nexthop_group *nh_grp;
	struct mlxsw_sp_nexthop *nh;
	struct fib_nh *fib_nh;
	int i;
	int err;

	nh_grp = FUNC7(FUNC13(nh_grp, nexthops, nhs), GFP_KERNEL);
	if (!nh_grp)
		return FUNC0(-ENOMEM);
	nh_grp->priv = fi;
	FUNC1(&nh_grp->fib_list);
	nh_grp->neigh_tbl = &arp_tbl;

	nh_grp->gateway = FUNC8(mlxsw_sp, fi);
	nh_grp->count = nhs;
	FUNC2(fi);
	for (i = 0; i < nh_grp->count; i++) {
		nh = &nh_grp->nexthops[i];
		fib_nh = FUNC3(fi, i);
		err = FUNC10(mlxsw_sp, nh_grp, nh, fib_nh);
		if (err)
			goto err_nexthop4_init;
	}
	err = FUNC11(mlxsw_sp, nh_grp);
	if (err)
		goto err_nexthop_group_insert;
	FUNC12(mlxsw_sp, nh_grp);
	return nh_grp;

err_nexthop_group_insert:
err_nexthop4_init:
	for (i--; i >= 0; i--) {
		nh = &nh_grp->nexthops[i];
		FUNC9(mlxsw_sp, nh);
	}
	FUNC5(fi);
	FUNC6(nh_grp);
	return FUNC0(err);
}