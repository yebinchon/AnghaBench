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
struct mlxsw_sp_nexthop {int counter_valid; int /*<<< orphan*/  counter_index; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_DPIPE_TABLE_NAME_ADJ ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 struct devlink* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mlxsw_sp *mlxsw_sp,
				    struct mlxsw_sp_nexthop *nh)
{
	struct devlink *devlink;

	devlink = FUNC2(mlxsw_sp->core);
	if (!FUNC0(devlink,
						 MLXSW_SP_DPIPE_TABLE_NAME_ADJ))
		return;

	if (FUNC1(mlxsw_sp, &nh->counter_index))
		return;

	nh->counter_valid = true;
}