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
typedef  scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; int flags; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_PVID ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct mlxsw_sp_fid*) ; 
 struct mlxsw_sp_fid* FUNC1 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif* FUNC2 (struct mlxsw_sp*,struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device const*,char*) ; 

__attribute__((used)) static int
FUNC4(struct mlxsw_sp *mlxsw_sp,
				const struct net_device *br_dev,
				const struct switchdev_obj_port_vlan *vlan)
{
	struct mlxsw_sp_rif *rif;
	struct mlxsw_sp_fid *fid;
	u16 pvid;
	u16 vid;

	rif = FUNC2(mlxsw_sp, br_dev);
	if (!rif)
		return 0;
	fid = FUNC1(rif);
	pvid = FUNC0(fid);

	for (vid = vlan->vid_begin; vid <= vlan->vid_end; ++vid) {
		if (vlan->flags & BRIDGE_VLAN_INFO_PVID) {
			if (vid != pvid) {
				FUNC3(br_dev, "Can't change PVID, it's used by router interface\n");
				return -EBUSY;
			}
		} else {
			if (vid == pvid) {
				FUNC3(br_dev, "Can't remove PVID, it's used by router interface\n");
				return -EBUSY;
			}
		}
	}

	return 0;
}