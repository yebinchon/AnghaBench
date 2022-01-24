#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_3__ {size_t module; } ;
struct mlxsw_sx_port {size_t local_port; TYPE_1__ mapping; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {struct mlxsw_sx_port** ports; int /*<<< orphan*/  core; TYPE_2__* bus_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_IB_DEFAULT_MTU ; 
 int MLXSW_PORT_SWID_DISABLED_PORT ; 
 scalar_t__ MLXSW_REG_PTYS_IB_SPEED_EDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sx_port*) ; 
 struct mlxsw_sx_port* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,struct mlxsw_sx_port*) ; 
 int FUNC5 (struct mlxsw_sx_port*,int) ; 
 int FUNC6 (struct mlxsw_sx_port*,size_t) ; 
 int FUNC7 (struct mlxsw_sx_port*,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct mlxsw_sx_port*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlxsw_sx_port*,int) ; 
 int FUNC10 (struct mlxsw_sx_port*) ; 

__attribute__((used)) static int FUNC11(struct mlxsw_sx *mlxsw_sx, u8 local_port,
				     u8 module, u8 width)
{
	struct mlxsw_sx_port *mlxsw_sx_port;
	int err;

	mlxsw_sx_port = FUNC3(sizeof(*mlxsw_sx_port), GFP_KERNEL);
	if (!mlxsw_sx_port)
		return -ENOMEM;
	mlxsw_sx_port->mlxsw_sx = mlxsw_sx;
	mlxsw_sx_port->local_port = local_port;
	mlxsw_sx_port->mapping.module = module;

	err = FUNC10(mlxsw_sx_port);
	if (err) {
		FUNC1(mlxsw_sx->bus_info->dev, "Port %d: Failed to set system port mapping\n",
			mlxsw_sx_port->local_port);
		goto err_port_system_port_mapping_set;
	}

	/* Adding port to Infiniband swid (1) */
	err = FUNC9(mlxsw_sx_port, 1);
	if (err) {
		FUNC1(mlxsw_sx->bus_info->dev, "Port %d: Failed to set SWID\n",
			mlxsw_sx_port->local_port);
		goto err_port_swid_set;
	}

	/* Expose the IB port number as it's front panel name */
	err = FUNC6(mlxsw_sx_port, module + 1);
	if (err) {
		FUNC1(mlxsw_sx->bus_info->dev, "Port %d: Failed to set IB port\n",
			mlxsw_sx_port->local_port);
		goto err_port_ib_set;
	}

	/* Supports all speeds from SDR to FDR (bitmask) and support bus width
	 * of 1x, 2x and 4x (3 bits bitmask)
	 */
	err = FUNC7(mlxsw_sx_port,
					 MLXSW_REG_PTYS_IB_SPEED_EDR - 1,
					 FUNC0(3) - 1);
	if (err) {
		FUNC1(mlxsw_sx->bus_info->dev, "Port %d: Failed to set speed\n",
			mlxsw_sx_port->local_port);
		goto err_port_speed_set;
	}

	/* Change to the maximum MTU the device supports, the SMA will take
	 * care of the active MTU
	 */
	err = FUNC8(mlxsw_sx_port, MLXSW_IB_DEFAULT_MTU);
	if (err) {
		FUNC1(mlxsw_sx->bus_info->dev, "Port %d: Failed to set MTU\n",
			mlxsw_sx_port->local_port);
		goto err_port_mtu_set;
	}

	err = FUNC5(mlxsw_sx_port, true);
	if (err) {
		FUNC1(mlxsw_sx->bus_info->dev, "Port %d: Failed to change admin state to UP\n",
			mlxsw_sx_port->local_port);
		goto err_port_admin_set;
	}

	FUNC4(mlxsw_sx->core, mlxsw_sx_port->local_port,
			       mlxsw_sx_port);
	mlxsw_sx->ports[local_port] = mlxsw_sx_port;
	return 0;

err_port_admin_set:
err_port_mtu_set:
err_port_speed_set:
err_port_ib_set:
	FUNC9(mlxsw_sx_port, MLXSW_PORT_SWID_DISABLED_PORT);
err_port_swid_set:
err_port_system_port_mapping_set:
	FUNC2(mlxsw_sx_port);
	return err;
}