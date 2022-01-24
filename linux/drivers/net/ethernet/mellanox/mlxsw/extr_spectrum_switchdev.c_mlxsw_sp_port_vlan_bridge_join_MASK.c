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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_port_vlan {struct mlxsw_sp_bridge_port* bridge_port; int /*<<< orphan*/  bridge_vlan_node; int /*<<< orphan*/  vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; } ;
struct mlxsw_sp_bridge_vlan {int /*<<< orphan*/  port_vlan_list; } ;
struct mlxsw_sp_bridge_port {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  stp_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 int BR_LEARNING ; 
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_bridge_vlan* FUNC2 (struct mlxsw_sp_bridge_port*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp_port_vlan*,struct mlxsw_sp_bridge_port*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_port_vlan*) ; 

__attribute__((used)) static int
FUNC7(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan,
			       struct mlxsw_sp_bridge_port *bridge_port,
			       struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
	struct mlxsw_sp_bridge_vlan *bridge_vlan;
	u16 vid = mlxsw_sp_port_vlan->vid;
	int err;

	/* No need to continue if only VLAN flags were changed */
	if (mlxsw_sp_port_vlan->bridge_port)
		return 0;

	err = FUNC5(mlxsw_sp_port_vlan, bridge_port,
					  extack);
	if (err)
		return err;

	err = FUNC3(mlxsw_sp_port, vid,
					     bridge_port->flags & BR_LEARNING);
	if (err)
		goto err_port_vid_learning_set;

	err = FUNC4(mlxsw_sp_port, vid,
					bridge_port->stp_state);
	if (err)
		goto err_port_vid_stp_set;

	bridge_vlan = FUNC2(bridge_port, vid);
	if (!bridge_vlan) {
		err = -ENOMEM;
		goto err_bridge_vlan_get;
	}

	FUNC0(&mlxsw_sp_port_vlan->bridge_vlan_node,
		 &bridge_vlan->port_vlan_list);

	FUNC1(mlxsw_sp_port->mlxsw_sp->bridge,
				 bridge_port->dev);
	mlxsw_sp_port_vlan->bridge_port = bridge_port;

	return 0;

err_bridge_vlan_get:
	FUNC4(mlxsw_sp_port, vid, BR_STATE_DISABLED);
err_port_vid_stp_set:
	FUNC3(mlxsw_sp_port, vid, false);
err_port_vid_learning_set:
	FUNC6(mlxsw_sp_port_vlan);
	return err;
}