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
struct mlxsw_sp_fib_entry {int /*<<< orphan*/  nexthop_group_node; struct mlxsw_sp_nexthop_group* nh_group; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_fib_entry *fib_entry)
{
	struct mlxsw_sp_nexthop_group *nh_grp = fib_entry->nh_group;

	FUNC0(&fib_entry->nexthop_group_node);
	if (!FUNC1(&nh_grp->fib_list))
		return;
	FUNC2(mlxsw_sp, nh_grp);
}