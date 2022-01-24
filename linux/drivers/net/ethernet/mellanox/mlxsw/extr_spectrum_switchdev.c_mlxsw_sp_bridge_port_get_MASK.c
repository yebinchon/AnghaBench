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
struct net_device {int dummy; } ;
struct mlxsw_sp_bridge_port {int /*<<< orphan*/  ref_count; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp_bridge {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_bridge_port* FUNC0 (struct mlxsw_sp_bridge_device*) ; 
 struct mlxsw_sp_bridge_port* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_bridge_device*) ; 
 struct mlxsw_sp_bridge_device* FUNC3 (struct mlxsw_sp_bridge*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_bridge*,struct mlxsw_sp_bridge_device*) ; 
 struct mlxsw_sp_bridge_port* FUNC5 (struct mlxsw_sp_bridge_device*,struct net_device*) ; 
 struct mlxsw_sp_bridge_port* FUNC6 (struct mlxsw_sp_bridge*,struct net_device*) ; 
 struct net_device* FUNC7 (struct net_device*) ; 

__attribute__((used)) static struct mlxsw_sp_bridge_port *
FUNC8(struct mlxsw_sp_bridge *bridge,
			 struct net_device *brport_dev)
{
	struct net_device *br_dev = FUNC7(brport_dev);
	struct mlxsw_sp_bridge_device *bridge_device;
	struct mlxsw_sp_bridge_port *bridge_port;
	int err;

	bridge_port = FUNC6(bridge, brport_dev);
	if (bridge_port) {
		bridge_port->ref_count++;
		return bridge_port;
	}

	bridge_device = FUNC3(bridge, br_dev);
	if (FUNC2(bridge_device))
		return FUNC0(bridge_device);

	bridge_port = FUNC5(bridge_device, brport_dev);
	if (!bridge_port) {
		err = -ENOMEM;
		goto err_bridge_port_create;
	}

	return bridge_port;

err_bridge_port_create:
	FUNC4(bridge, bridge_device);
	return FUNC1(err);
}