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
struct TYPE_2__ {int /*<<< orphan*/  vni; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_fid* FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_fid*) ; 
 struct vxlan_dev* FUNC3 (struct net_device const*) ; 

void FUNC4(struct mlxsw_sp *mlxsw_sp,
				 const struct net_device *vxlan_dev)
{
	struct vxlan_dev *vxlan = FUNC3(vxlan_dev);
	struct mlxsw_sp_fid *fid;

	/* If the VxLAN device is down, then the FID does not have a VNI */
	fid = FUNC0(mlxsw_sp, vxlan->cfg.vni);
	if (!fid)
		return;

	FUNC2(mlxsw_sp, fid);
	FUNC1(fid);
}