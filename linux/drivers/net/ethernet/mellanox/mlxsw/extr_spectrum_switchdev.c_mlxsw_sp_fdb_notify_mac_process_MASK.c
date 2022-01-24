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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_port_vlan {int /*<<< orphan*/  vid; struct mlxsw_sp_bridge_port* bridge_port; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp_bridge_port {int /*<<< orphan*/  dev; struct mlxsw_sp_bridge_device* bridge_device; } ;
struct mlxsw_sp_bridge_device {scalar_t__ vlan_enabled; } ;
struct mlxsw_sp {TYPE_1__* bus_info; struct mlxsw_sp_port** ports; } ;
typedef  enum switchdev_notifier_type { ____Placeholder_switchdev_notifier_type } switchdev_notifier_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int SWITCHDEV_FDB_ADD_TO_BRIDGE ; 
 int SWITCHDEV_FDB_DEL_TO_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_sp*,size_t,char*,int /*<<< orphan*/ ,int,int) ; 
 struct mlxsw_sp_port_vlan* FUNC5 (struct mlxsw_sp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct mlxsw_sp *mlxsw_sp,
					    char *sfn_pl, int rec_index,
					    bool adding)
{
	struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
	struct mlxsw_sp_bridge_device *bridge_device;
	struct mlxsw_sp_bridge_port *bridge_port;
	struct mlxsw_sp_port *mlxsw_sp_port;
	enum switchdev_notifier_type type;
	char mac[ETH_ALEN];
	u8 local_port;
	u16 vid, fid;
	bool do_notification = true;
	int err;

	FUNC1(sfn_pl, rec_index, mac, &fid, &local_port);
	mlxsw_sp_port = mlxsw_sp->ports[local_port];
	if (!mlxsw_sp_port) {
		FUNC0(mlxsw_sp->bus_info->dev, "Incorrect local port in FDB notification\n");
		goto just_remove;
	}

	if (FUNC3(mlxsw_sp, fid))
		goto just_remove;

	mlxsw_sp_port_vlan = FUNC5(mlxsw_sp_port, fid);
	if (!mlxsw_sp_port_vlan) {
		FUNC6(mlxsw_sp_port->dev, "Failed to find a matching {Port, VID} following FDB notification\n");
		goto just_remove;
	}

	bridge_port = mlxsw_sp_port_vlan->bridge_port;
	if (!bridge_port) {
		FUNC6(mlxsw_sp_port->dev, "{Port, VID} not associated with a bridge\n");
		goto just_remove;
	}

	bridge_device = bridge_port->bridge_device;
	vid = bridge_device->vlan_enabled ? mlxsw_sp_port_vlan->vid : 0;

do_fdb_op:
	err = FUNC4(mlxsw_sp, local_port, mac, fid,
				      adding, true);
	if (err) {
		FUNC0(mlxsw_sp->bus_info->dev, "Failed to set FDB entry\n");
		return;
	}

	if (!do_notification)
		return;
	type = adding ? SWITCHDEV_FDB_ADD_TO_BRIDGE : SWITCHDEV_FDB_DEL_TO_BRIDGE;
	FUNC2(type, mac, vid, bridge_port->dev, adding);

	return;

just_remove:
	adding = false;
	do_notification = false;
	goto do_fdb_op;
}