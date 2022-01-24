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
struct mlxsw_sp_nexthop_group {int /*<<< orphan*/  fib_list; } ;
struct mlxsw_sp_fib_entry {struct mlxsw_sp_nexthop_group* nh_group; int /*<<< orphan*/  nexthop_group_node; } ;
struct mlxsw_sp {int dummy; } ;
struct fib_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_nexthop_group*) ; 
 int FUNC1 (struct mlxsw_sp_nexthop_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_nexthop_group* FUNC3 (struct mlxsw_sp*,struct fib_info*) ; 
 struct mlxsw_sp_nexthop_group* FUNC4 (struct mlxsw_sp*,struct fib_info*) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_fib_entry *fib_entry,
				       struct fib_info *fi)
{
	struct mlxsw_sp_nexthop_group *nh_grp;

	nh_grp = FUNC4(mlxsw_sp, fi);
	if (!nh_grp) {
		nh_grp = FUNC3(mlxsw_sp, fi);
		if (FUNC0(nh_grp))
			return FUNC1(nh_grp);
	}
	FUNC2(&fib_entry->nexthop_group_node, &nh_grp->fib_list);
	fib_entry->nh_group = nh_grp;
	return 0;
}