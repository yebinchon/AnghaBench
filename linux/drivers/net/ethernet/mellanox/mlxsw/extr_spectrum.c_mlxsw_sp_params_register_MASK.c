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
union devlink_param_value {int /*<<< orphan*/  vu8; } ;
struct mlxsw_core {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER ; 
 int /*<<< orphan*/  DEVLINK_PARAM_GENERIC_ID_FW_LOAD_POLICY ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,int /*<<< orphan*/ ,union devlink_param_value) ; 
 int FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_sp_devlink_params ; 
 struct devlink* FUNC3 (struct mlxsw_core*) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_core *mlxsw_core)
{
	struct devlink *devlink = FUNC3(mlxsw_core);
	union devlink_param_value value;
	int err;

	err = FUNC2(devlink, mlxsw_sp_devlink_params,
				      FUNC0(mlxsw_sp_devlink_params));
	if (err)
		return err;

	value.vu8 = DEVLINK_PARAM_FW_LOAD_POLICY_VALUE_DRIVER;
	FUNC1(devlink,
					   DEVLINK_PARAM_GENERIC_ID_FW_LOAD_POLICY,
					   value);
	return 0;
}