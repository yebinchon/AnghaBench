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
typedef  union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct switchdev_notifier_vxlan_fdb_info {int offloaded; int /*<<< orphan*/  info; int /*<<< orphan*/  eth_addr; int /*<<< orphan*/  remote_ip; } ;
struct switchdev_notifier_fdb_info {int /*<<< orphan*/  vid; int /*<<< orphan*/  addr; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_switchdev_event_work {int event; struct switchdev_notifier_fdb_info fdb_info; struct net_device* dev; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  SWITCHDEV_FDB_ADD_TO_DEVICE 129 
#define  SWITCHDEV_FDB_DEL_TO_DEVICE 128 
 int /*<<< orphan*/  SWITCHDEV_FDB_OFFLOADED ; 
 int /*<<< orphan*/  SWITCHDEV_VXLAN_FDB_OFFLOADED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fid*) ; 
 int FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,union mlxsw_sp_l3addr*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,union mlxsw_sp_l3addr*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct switchdev_notifier_vxlan_fdb_info*) ; 

__attribute__((used)) static void
FUNC6(struct mlxsw_sp *mlxsw_sp,
					  struct mlxsw_sp_switchdev_event_work *
					  switchdev_work,
					  struct mlxsw_sp_fid *fid, __be32 vni)
{
	struct switchdev_notifier_vxlan_fdb_info vxlan_fdb_info;
	struct switchdev_notifier_fdb_info *fdb_info;
	struct net_device *dev = switchdev_work->dev;
	enum mlxsw_sp_l3proto proto;
	union mlxsw_sp_l3addr addr;
	int err;

	fdb_info = &switchdev_work->fdb_info;
	err = FUNC5(dev, fdb_info->addr, vni, &vxlan_fdb_info);
	if (err)
		return;

	FUNC4(&vxlan_fdb_info.remote_ip,
					      &proto, &addr);

	switch (switchdev_work->event) {
	case SWITCHDEV_FDB_ADD_TO_DEVICE:
		err = FUNC3(mlxsw_sp,
						     vxlan_fdb_info.eth_addr,
						     FUNC2(fid),
						     proto, &addr, true, false);
		if (err)
			return;
		vxlan_fdb_info.offloaded = true;
		FUNC0(SWITCHDEV_VXLAN_FDB_OFFLOADED, dev,
					 &vxlan_fdb_info.info, NULL);
		FUNC1(SWITCHDEV_FDB_OFFLOADED,
					    vxlan_fdb_info.eth_addr,
					    fdb_info->vid, dev, true);
		break;
	case SWITCHDEV_FDB_DEL_TO_DEVICE:
		err = FUNC3(mlxsw_sp,
						     vxlan_fdb_info.eth_addr,
						     FUNC2(fid),
						     proto, &addr, false,
						     false);
		vxlan_fdb_info.offloaded = false;
		FUNC0(SWITCHDEV_VXLAN_FDB_OFFLOADED, dev,
					 &vxlan_fdb_info.info, NULL);
		break;
	}
}