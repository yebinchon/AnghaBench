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
struct mlxsw_sp_port_vlan {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 scalar_t__ FUNC0 (int) ; 
 struct mlxsw_sp_port_vlan* FUNC1 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_port_vlan*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_port_vlan*) ; 
 struct mlxsw_sp_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *l3_dev,
					     struct net_device *port_dev,
					     unsigned long event, u16 vid,
					     struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC4(port_dev);
	struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;

	mlxsw_sp_port_vlan = FUNC1(mlxsw_sp_port, vid);
	if (FUNC0(!mlxsw_sp_port_vlan))
		return -EINVAL;

	switch (event) {
	case NETDEV_UP:
		return FUNC2(mlxsw_sp_port_vlan,
						      l3_dev, extack);
	case NETDEV_DOWN:
		FUNC3(mlxsw_sp_port_vlan);
		break;
	}

	return 0;
}