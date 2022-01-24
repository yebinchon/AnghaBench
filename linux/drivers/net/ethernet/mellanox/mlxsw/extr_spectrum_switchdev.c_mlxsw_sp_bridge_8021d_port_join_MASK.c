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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port_vlan {scalar_t__ fid; } ;
struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_bridge_port {struct net_device* dev; } ;
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLXSW_SP_DEFAULT_VID ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_sp_port_vlan*,struct mlxsw_sp_bridge_port*,struct netlink_ext_ack*) ; 
 struct mlxsw_sp_port_vlan* FUNC5 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_port_vlan*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct mlxsw_sp_bridge_device *bridge_device,
				struct mlxsw_sp_bridge_port *bridge_port,
				struct mlxsw_sp_port *mlxsw_sp_port,
				struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
	struct net_device *dev = bridge_port->dev;
	u16 vid;

	vid = FUNC2(dev) ? FUNC7(dev) : MLXSW_SP_DEFAULT_VID;
	mlxsw_sp_port_vlan = FUNC5(mlxsw_sp_port, vid);
	if (FUNC1(!mlxsw_sp_port_vlan))
		return -EINVAL;

	if (FUNC3(mlxsw_sp_port, bridge_device->dev)) {
		FUNC0(extack, "Can not bridge VLAN uppers of the same port");
		return -EINVAL;
	}

	/* Port is no longer usable as a router interface */
	if (mlxsw_sp_port_vlan->fid)
		FUNC6(mlxsw_sp_port_vlan);

	return FUNC4(mlxsw_sp_port_vlan, bridge_port,
					      extack);
}