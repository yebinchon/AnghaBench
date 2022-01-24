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
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {size_t module; size_t width; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; TYPE_1__ mapping; } ;
struct mlxsw_sp {TYPE_2__* bus_info; struct mlxsw_sp_port** ports; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  LOCAL_PORTS_IN_1X ; 
 int /*<<< orphan*/  LOCAL_PORTS_IN_2X ; 
 size_t FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 size_t MLXSW_PORT_MODULE_MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC2 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct mlxsw_sp* FUNC4 (struct mlxsw_core*) ; 
 size_t FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (struct mlxsw_sp*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,size_t) ; 
 int FUNC8 (struct mlxsw_sp*,size_t,size_t,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(struct mlxsw_core *mlxsw_core, u8 local_port,
			       unsigned int count,
			       struct netlink_ext_ack *extack)
{
	struct mlxsw_sp *mlxsw_sp = FUNC4(mlxsw_core);
	u8 local_ports_in_1x, local_ports_in_2x, offset;
	struct mlxsw_sp_port *mlxsw_sp_port;
	u8 module, cur_width, base_port;
	int i;
	int err;

	if (!FUNC1(mlxsw_core, LOCAL_PORTS_IN_1X) ||
	    !FUNC1(mlxsw_core, LOCAL_PORTS_IN_2X))
		return -EIO;

	local_ports_in_1x = FUNC0(mlxsw_core, LOCAL_PORTS_IN_1X);
	local_ports_in_2x = FUNC0(mlxsw_core, LOCAL_PORTS_IN_2X);

	mlxsw_sp_port = mlxsw_sp->ports[local_port];
	if (!mlxsw_sp_port) {
		FUNC3(mlxsw_sp->bus_info->dev, "Port number \"%d\" does not exist\n",
			local_port);
		FUNC2(extack, "Port number does not exist");
		return -EINVAL;
	}

	module = mlxsw_sp_port->mapping.module;
	cur_width = mlxsw_sp_port->mapping.width;

	if (count != 2 && count != 4) {
		FUNC10(mlxsw_sp_port->dev, "Port can only be split into 2 or 4 ports\n");
		FUNC2(extack, "Port can only be split into 2 or 4 ports");
		return -EINVAL;
	}

	if (cur_width != MLXSW_PORT_MODULE_MAX_WIDTH) {
		FUNC10(mlxsw_sp_port->dev, "Port cannot be split further\n");
		FUNC2(extack, "Port cannot be split further");
		return -EINVAL;
	}

	/* Make sure we have enough slave (even) ports for the split. */
	if (count == 2) {
		offset = local_ports_in_2x;
		base_port = local_port;
		if (mlxsw_sp->ports[base_port + local_ports_in_2x]) {
			FUNC10(mlxsw_sp_port->dev, "Invalid split configuration\n");
			FUNC2(extack, "Invalid split configuration");
			return -EINVAL;
		}
	} else {
		offset = local_ports_in_1x;
		base_port = FUNC5(local_port);
		if (mlxsw_sp->ports[base_port + 1] ||
		    mlxsw_sp->ports[base_port + 3]) {
			FUNC10(mlxsw_sp_port->dev, "Invalid split configuration\n");
			FUNC2(extack, "Invalid split configuration");
			return -EINVAL;
		}
	}

	for (i = 0; i < count; i++)
		if (FUNC6(mlxsw_sp, base_port + i * offset))
			FUNC7(mlxsw_sp, base_port + i * offset);

	err = FUNC8(mlxsw_sp, base_port, module, count,
					 offset);
	if (err) {
		FUNC3(mlxsw_sp->bus_info->dev, "Failed to create split ports\n");
		goto err_port_split_create;
	}

	return 0;

err_port_split_create:
	FUNC9(mlxsw_sp, base_port, count);
	return err;
}