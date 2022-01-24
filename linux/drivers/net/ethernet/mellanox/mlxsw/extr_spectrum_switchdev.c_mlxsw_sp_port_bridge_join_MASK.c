#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_bridge_port {struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* ops; } ;
struct mlxsw_sp {int /*<<< orphan*/  bridge; } ;
struct TYPE_2__ {int (* port_join ) (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_port*,struct netlink_ext_ack*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_bridge_port*) ; 
 int FUNC1 (struct mlxsw_sp_bridge_port*) ; 
 struct mlxsw_sp_bridge_port* FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlxsw_sp_bridge_port*) ; 
 int FUNC4 (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_bridge_port*,struct mlxsw_sp_port*,struct netlink_ext_ack*) ; 

int FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
			      struct net_device *brport_dev,
			      struct net_device *br_dev,
			      struct netlink_ext_ack *extack)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct mlxsw_sp_bridge_device *bridge_device;
	struct mlxsw_sp_bridge_port *bridge_port;
	int err;

	bridge_port = FUNC2(mlxsw_sp->bridge, brport_dev);
	if (FUNC0(bridge_port))
		return FUNC1(bridge_port);
	bridge_device = bridge_port->bridge_device;

	err = bridge_device->ops->port_join(bridge_device, bridge_port,
					    mlxsw_sp_port, extack);
	if (err)
		goto err_port_join;

	return 0;

err_port_join:
	FUNC3(mlxsw_sp->bridge, bridge_port);
	return err;
}