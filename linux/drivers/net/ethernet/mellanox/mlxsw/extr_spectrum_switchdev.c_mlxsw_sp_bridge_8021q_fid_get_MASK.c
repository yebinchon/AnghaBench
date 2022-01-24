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
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp_fid*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_bridge_device*,struct net_device*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct mlxsw_sp_fid* FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_fid*) ; 
 scalar_t__ FUNC6 (struct mlxsw_sp_fid*) ; 
 struct mlxsw_sp* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static struct mlxsw_sp_fid *
FUNC9(struct mlxsw_sp_bridge_device *bridge_device,
			      u16 vid, struct netlink_ext_ack *extack)
{
	struct mlxsw_sp *mlxsw_sp = FUNC7(bridge_device->dev);
	struct net_device *vxlan_dev;
	struct mlxsw_sp_fid *fid;
	int err;

	fid = FUNC4(mlxsw_sp, vid);
	if (FUNC1(fid))
		return fid;

	if (FUNC6(fid))
		return fid;

	/* Find the VxLAN device that has the specified VLAN configured as
	 * PVID and egress untagged. There can be at most one such device
	 */
	vxlan_dev = FUNC2(bridge_device->dev,
							 vid);
	if (!vxlan_dev)
		return fid;

	if (!FUNC8(vxlan_dev))
		return fid;

	err = FUNC3(bridge_device, vxlan_dev, vid,
					       extack);
	if (err)
		goto err_vxlan_join;

	return fid;

err_vxlan_join:
	FUNC5(fid);
	return FUNC0(err);
}