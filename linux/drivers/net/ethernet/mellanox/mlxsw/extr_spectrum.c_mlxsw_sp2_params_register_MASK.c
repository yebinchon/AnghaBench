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
union devlink_param_value {scalar_t__ vu32; } ;
struct mlxsw_core {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_DEVLINK_PARAM_ID_ACL_REGION_REHASH_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,int /*<<< orphan*/ ,union devlink_param_value) ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp2_devlink_params ; 
 int FUNC3 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_core*) ; 
 struct devlink* FUNC5 (struct mlxsw_core*) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_core *mlxsw_core)
{
	struct devlink *devlink = FUNC5(mlxsw_core);
	union devlink_param_value value;
	int err;

	err = FUNC3(mlxsw_core);
	if (err)
		return err;

	err = FUNC2(devlink, mlxsw_sp2_devlink_params,
				      FUNC0(mlxsw_sp2_devlink_params));
	if (err)
		goto err_devlink_params_register;

	value.vu32 = 0;
	FUNC1(devlink,
					   MLXSW_DEVLINK_PARAM_ID_ACL_REGION_REHASH_INTERVAL,
					   value);
	return 0;

err_devlink_params_register:
	FUNC4(mlxsw_core);
	return err;
}