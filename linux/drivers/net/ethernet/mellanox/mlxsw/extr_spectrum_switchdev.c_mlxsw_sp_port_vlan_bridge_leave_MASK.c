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
struct mlxsw_sp_port_vlan {struct mlxsw_sp_bridge_port* bridge_port; int /*<<< orphan*/  bridge_vlan_node; int /*<<< orphan*/  vid; struct mlxsw_sp_fid* fid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_vlan {int /*<<< orphan*/  port_vlan_list; } ;
struct mlxsw_sp_bridge_port {int /*<<< orphan*/  vlans_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_STATE_DISABLED ; 
 scalar_t__ MLXSW_SP_FID_TYPE_8021D ; 
 scalar_t__ MLXSW_SP_FID_TYPE_8021Q ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct mlxsw_sp_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_port*,struct mlxsw_sp_bridge_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mlxsw_sp_bridge_port*) ; 
 struct mlxsw_sp_bridge_vlan* FUNC6 (struct mlxsw_sp_bridge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_bridge_vlan*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_fid*) ; 
 scalar_t__ FUNC9 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp_port_vlan*) ; 

void
FUNC13(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan)
{
	struct mlxsw_sp_port *mlxsw_sp_port = mlxsw_sp_port_vlan->mlxsw_sp_port;
	struct mlxsw_sp_fid *fid = mlxsw_sp_port_vlan->fid;
	struct mlxsw_sp_bridge_vlan *bridge_vlan;
	struct mlxsw_sp_bridge_port *bridge_port;
	u16 vid = mlxsw_sp_port_vlan->vid;
	bool last_port, last_vlan;

	if (FUNC0(FUNC9(fid) != MLXSW_SP_FID_TYPE_8021Q &&
		    FUNC9(fid) != MLXSW_SP_FID_TYPE_8021D))
		return;

	bridge_port = mlxsw_sp_port_vlan->bridge_port;
	last_vlan = FUNC2(&bridge_port->vlans_list);
	bridge_vlan = FUNC6(bridge_port, vid);
	last_port = FUNC2(&bridge_vlan->port_vlan_list);

	FUNC1(&mlxsw_sp_port_vlan->bridge_vlan_node);
	FUNC7(bridge_vlan);
	FUNC11(mlxsw_sp_port, vid, BR_STATE_DISABLED);
	FUNC10(mlxsw_sp_port, vid, false);
	if (last_port)
		FUNC3(mlxsw_sp_port->mlxsw_sp,
					       bridge_port,
					       FUNC8(fid));
	if (last_vlan)
		FUNC4(mlxsw_sp_port, bridge_port);

	FUNC12(mlxsw_sp_port_vlan);

	FUNC5(mlxsw_sp_port->mlxsw_sp->bridge, bridge_port);
	mlxsw_sp_port_vlan->bridge_port = NULL;
}