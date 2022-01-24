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
struct mlxsw_driver {int (* port_type_set ) (struct mlxsw_core*,int /*<<< orphan*/ ,int) ;} ;
struct mlxsw_core_port {int /*<<< orphan*/  local_port; } ;
struct mlxsw_core {struct mlxsw_driver* driver; } ;
struct devlink_port {int /*<<< orphan*/  devlink; } ;
typedef  enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct mlxsw_core_port* FUNC0 (struct devlink_port*) ; 
 struct mlxsw_core* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_core*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct devlink_port *devlink_port,
				       enum devlink_port_type port_type)
{
	struct mlxsw_core *mlxsw_core = FUNC1(devlink_port->devlink);
	struct mlxsw_driver *mlxsw_driver = mlxsw_core->driver;
	struct mlxsw_core_port *mlxsw_core_port = FUNC0(devlink_port);

	if (!mlxsw_driver->port_type_set)
		return -EOPNOTSUPP;

	return mlxsw_driver->port_type_set(mlxsw_core,
					   mlxsw_core_port->local_port,
					   port_type);
}