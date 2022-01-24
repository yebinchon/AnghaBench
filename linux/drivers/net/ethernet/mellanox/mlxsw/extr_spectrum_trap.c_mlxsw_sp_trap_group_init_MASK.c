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
struct mlxsw_sp {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct devlink_trap_group {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp*,struct devlink_trap_group const*) ; 
 struct mlxsw_sp* FUNC1 (struct mlxsw_core*) ; 
 int FUNC2 (struct mlxsw_sp*,struct devlink_trap_group const*) ; 

int FUNC3(struct mlxsw_core *mlxsw_core,
			     const struct devlink_trap_group *group)
{
	struct mlxsw_sp *mlxsw_sp = FUNC1(mlxsw_core);
	int err;

	err = FUNC2(mlxsw_sp, group);
	if (err)
		return err;

	err = FUNC0(mlxsw_sp, group);
	if (err)
		return err;

	return 0;
}