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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct mlxsw_sp_bridge_device*,struct net_device const*,scalar_t__,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct net_device const*) ; 
 scalar_t__ FUNC5 (struct mlxsw_sp_fid*) ; 
 struct mlxsw_sp_fid* FUNC6 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_fid*) ; 
 struct vxlan_dev* FUNC8 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device const*) ; 

__attribute__((used)) static int
FUNC10(struct mlxsw_sp *mlxsw_sp,
				  struct mlxsw_sp_bridge_device *bridge_device,
				  const struct net_device *vxlan_dev, u16 vid,
				  bool flag_untagged, bool flag_pvid,
				  struct netlink_ext_ack *extack)
{
	struct vxlan_dev *vxlan = FUNC8(vxlan_dev);
	__be32 vni = vxlan->cfg.vni;
	struct mlxsw_sp_fid *fid;
	u16 old_vid;
	int err;

	/* We cannot have the same VLAN as PVID and egress untagged on multiple
	 * VxLAN devices. Note that we get this notification before the VLAN is
	 * actually added to the bridge's database, so it is not possible for
	 * the lookup function to return 'vxlan_dev'
	 */
	if (flag_untagged && flag_pvid &&
	    FUNC2(bridge_device->dev, vid)) {
		FUNC0(extack, "VLAN already mapped to a different VNI");
		return -EINVAL;
	}

	if (!FUNC9(vxlan_dev))
		return 0;

	/* First case: FID is not associated with this VNI, but the new VLAN
	 * is both PVID and egress untagged. Need to enable NVE on the FID, if
	 * it exists
	 */
	fid = FUNC6(mlxsw_sp, vni);
	if (!fid) {
		if (!flag_untagged || !flag_pvid)
			return 0;
		return FUNC3(bridge_device,
							vxlan_dev, vid, extack);
	}

	/* Second case: FID is associated with the VNI and the VLAN associated
	 * with the FID is the same as the notified VLAN. This means the flags
	 * (PVID / egress untagged) were toggled and that NVE should be
	 * disabled on the FID
	 */
	old_vid = FUNC5(fid);
	if (vid == old_vid) {
		if (FUNC1(flag_untagged && flag_pvid)) {
			FUNC7(fid);
			return -EINVAL;
		}
		FUNC4(mlxsw_sp, vxlan_dev);
		FUNC7(fid);
		return 0;
	}

	/* Third case: A new VLAN was configured on the VxLAN device, but this
	 * VLAN is not PVID, so there is nothing to do.
	 */
	if (!flag_pvid) {
		FUNC7(fid);
		return 0;
	}

	/* Fourth case: Thew new VLAN is PVID, which means the VLAN currently
	 * mapped to the VNI should be unmapped
	 */
	FUNC4(mlxsw_sp, vxlan_dev);
	FUNC7(fid);

	/* Fifth case: The new VLAN is also egress untagged, which means the
	 * VLAN needs to be mapped to the VNI
	 */
	if (!flag_untagged)
		return 0;

	err = FUNC3(bridge_device, vxlan_dev, vid,
					       extack);
	if (err)
		goto err_vxlan_join;

	return 0;

err_vxlan_join:
	FUNC3(bridge_device, vxlan_dev, old_vid,
					 NULL);
	return err;
}