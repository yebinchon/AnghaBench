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
struct mlxsw_sp_nexthop_group {int count; int /*<<< orphan*/  adj_index_valid; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_nexthop_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_nexthop_group *nh_grp)
{
	struct mlxsw_sp_nexthop *nh;
	int i = nh_grp->count;

	FUNC4(mlxsw_sp, nh_grp);
	for (i--; i >= 0; i--) {
		nh = &nh_grp->nexthops[i];
		FUNC2(mlxsw_sp, nh);
	}
	FUNC3(mlxsw_sp, nh_grp);
	FUNC0(nh_grp->adj_index_valid);
	FUNC1(nh_grp);
}