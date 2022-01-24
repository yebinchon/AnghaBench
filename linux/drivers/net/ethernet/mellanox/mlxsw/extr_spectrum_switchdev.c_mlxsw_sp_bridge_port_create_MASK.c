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
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; int /*<<< orphan*/  lag_id; scalar_t__ lagged; } ;
struct mlxsw_sp_bridge_port {int flags; int ref_count; int /*<<< orphan*/  list; int /*<<< orphan*/  vlans_list; int /*<<< orphan*/  stp_state; struct mlxsw_sp_bridge_device* bridge_device; struct net_device* dev; int /*<<< orphan*/  system_port; int /*<<< orphan*/  lag_id; scalar_t__ lagged; } ;
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  ports_list; } ;

/* Variables and functions */
 int BR_FLOOD ; 
 int BR_LEARNING ; 
 int BR_LEARNING_SYNC ; 
 int BR_MCAST_FLOOD ; 
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_bridge_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static struct mlxsw_sp_bridge_port *
FUNC4(struct mlxsw_sp_bridge_device *bridge_device,
			    struct net_device *brport_dev)
{
	struct mlxsw_sp_bridge_port *bridge_port;
	struct mlxsw_sp_port *mlxsw_sp_port;

	bridge_port = FUNC1(sizeof(*bridge_port), GFP_KERNEL);
	if (!bridge_port)
		return NULL;

	mlxsw_sp_port = FUNC3(brport_dev);
	bridge_port->lagged = mlxsw_sp_port->lagged;
	if (bridge_port->lagged)
		bridge_port->lag_id = mlxsw_sp_port->lag_id;
	else
		bridge_port->system_port = mlxsw_sp_port->local_port;
	bridge_port->dev = brport_dev;
	bridge_port->bridge_device = bridge_device;
	bridge_port->stp_state = BR_STATE_DISABLED;
	bridge_port->flags = BR_LEARNING | BR_FLOOD | BR_LEARNING_SYNC |
			     BR_MCAST_FLOOD;
	FUNC0(&bridge_port->vlans_list);
	FUNC2(&bridge_port->list, &bridge_device->ports_list);
	bridge_port->ref_count = 1;

	return bridge_port;
}