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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  vni; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct net_device const*) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp_fid*) ; 
 struct mlxsw_sp_fid* FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid*) ; 
 struct vxlan_dev* FUNC4 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device const*) ; 

__attribute__((used)) static void
FUNC6(struct mlxsw_sp *mlxsw_sp,
				  struct mlxsw_sp_bridge_device *bridge_device,
				  const struct net_device *vxlan_dev, u16 vid)
{
	struct vxlan_dev *vxlan = FUNC4(vxlan_dev);
	__be32 vni = vxlan->cfg.vni;
	struct mlxsw_sp_fid *fid;

	if (!FUNC5(vxlan_dev))
		return;

	fid = FUNC2(mlxsw_sp, vni);
	if (!fid)
		return;

	/* A different VLAN than the one mapped to the VNI is deleted */
	if (FUNC1(fid) != vid)
		goto out;

	FUNC0(mlxsw_sp, vxlan_dev);

out:
	FUNC3(fid);
}