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
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vid; int /*<<< orphan*/  added_by_user; } ;
struct mlxsw_sp_switchdev_event_work {scalar_t__ event; TYPE_2__ fdb_info; struct net_device* dev; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* ops; } ;
struct mlxsw_sp {int /*<<< orphan*/  bridge; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_3__ {struct mlxsw_sp_fid* (* fid_lookup ) (struct mlxsw_sp_bridge_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ SWITCHDEV_FDB_ADD_TO_DEVICE ; 
 scalar_t__ SWITCHDEV_FDB_DEL_TO_DEVICE ; 
 struct mlxsw_sp_bridge_device* FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*) ; 
 int FUNC2 (struct mlxsw_sp_fid*,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_switchdev_event_work*,struct mlxsw_sp_fid*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct mlxsw_sp_fid* FUNC8 (struct mlxsw_sp_bridge_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct mlxsw_sp_switchdev_event_work *
					switchdev_work)
{
	struct mlxsw_sp_bridge_device *bridge_device;
	struct net_device *dev = switchdev_work->dev;
	struct net_device *br_dev;
	struct mlxsw_sp *mlxsw_sp;
	struct mlxsw_sp_fid *fid;
	__be32 vni;
	int err;

	if (switchdev_work->event != SWITCHDEV_FDB_ADD_TO_DEVICE &&
	    switchdev_work->event != SWITCHDEV_FDB_DEL_TO_DEVICE)
		return;

	if (switchdev_work->event == SWITCHDEV_FDB_ADD_TO_DEVICE &&
	    !switchdev_work->fdb_info.added_by_user)
		return;

	if (!FUNC7(dev))
		return;
	br_dev = FUNC5(dev);
	if (!br_dev)
		return;
	if (!FUNC6(br_dev))
		return;
	mlxsw_sp = FUNC3(br_dev);
	if (!mlxsw_sp)
		return;
	bridge_device = FUNC0(mlxsw_sp->bridge, br_dev);
	if (!bridge_device)
		return;

	fid = bridge_device->ops->fid_lookup(bridge_device,
					     switchdev_work->fdb_info.vid);
	if (!fid)
		return;

	err = FUNC2(fid, &vni);
	if (err)
		goto out;

	FUNC4(mlxsw_sp, switchdev_work, fid,
						  vni);

out:
	FUNC1(fid);
}