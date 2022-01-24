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
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sx {int dummy; } ;
struct mlxsw_core {int dummy; } ;
typedef  enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;

/* Variables and functions */
 int DEVLINK_PORT_TYPE_AUTO ; 
 int DEVLINK_PORT_TYPE_ETH ; 
 int DEVLINK_PORT_TYPE_IB ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct mlxsw_sx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sx*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sx* FUNC3 (struct mlxsw_core*) ; 
 int FUNC4 (struct mlxsw_sx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_core *mlxsw_core, u8 local_port,
				  enum devlink_port_type new_type)
{
	struct mlxsw_sx *mlxsw_sx = FUNC3(mlxsw_core);
	u8 module, width;
	int err;

	if (new_type == DEVLINK_PORT_TYPE_AUTO)
		return -EOPNOTSUPP;

	FUNC2(mlxsw_sx, local_port);
	err = FUNC4(mlxsw_sx, local_port, &module,
					    &width);
	if (err)
		goto err_port_module_info_get;

	if (new_type == DEVLINK_PORT_TYPE_ETH)
		err = FUNC0(mlxsw_sx, local_port, module,
						 width);
	else if (new_type == DEVLINK_PORT_TYPE_IB)
		err = FUNC1(mlxsw_sx, local_port, module,
						width);

err_port_module_info_get:
	return err;
}