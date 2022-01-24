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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,scalar_t__,struct mlxsw_sp*) ; 
 int /*<<< orphan*/  mlxsw_sp_listener_devlink_map ; 
 int /*<<< orphan*/  mlxsw_sp_listeners_arr ; 
 int /*<<< orphan*/  mlxsw_sp_traps_arr ; 
 struct devlink* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct mlxsw_sp *mlxsw_sp)
{
	struct devlink *devlink = FUNC3(mlxsw_sp->core);

	if (FUNC1(FUNC0(mlxsw_sp_listener_devlink_map) !=
		    FUNC0(mlxsw_sp_listeners_arr)))
		return -EINVAL;

	return FUNC2(devlink, mlxsw_sp_traps_arr,
				      FUNC0(mlxsw_sp_traps_arr),
				      mlxsw_sp);
}