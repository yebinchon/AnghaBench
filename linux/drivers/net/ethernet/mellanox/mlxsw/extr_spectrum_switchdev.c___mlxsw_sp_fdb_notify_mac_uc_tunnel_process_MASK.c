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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int flags; } ;
struct vxlan_dev {TYPE_1__ cfg; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {TYPE_2__* ops; } ;
struct mlxsw_sp {int /*<<< orphan*/  bridge; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  (* fid_vid ) (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_fid const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BR_LEARNING ; 
 int EINVAL ; 
 int VXLAN_F_LEARN ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct mlxsw_sp_bridge_device* FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int FUNC3 (struct mlxsw_sp_fid const*,int*) ; 
 int FUNC4 (struct mlxsw_sp_fid const*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (struct net_device*) ; 
 struct vxlan_dev* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp_bridge_device*,struct mlxsw_sp_fid const*) ; 

__attribute__((used)) static int
FUNC10(struct mlxsw_sp *mlxsw_sp,
					    const struct mlxsw_sp_fid *fid,
					    bool adding,
					    struct net_device **nve_dev,
					    u16 *p_vid, __be32 *p_vni)
{
	struct mlxsw_sp_bridge_device *bridge_device;
	struct net_device *br_dev, *dev;
	int nve_ifindex;
	int err;

	err = FUNC3(fid, &nve_ifindex);
	if (err)
		return err;

	err = FUNC4(fid, p_vni);
	if (err)
		return err;

	dev = FUNC0(&init_net, nve_ifindex);
	if (!dev)
		return -EINVAL;
	*nve_dev = dev;

	if (!FUNC8(dev))
		return -EINVAL;

	if (adding && !FUNC1(dev, BR_LEARNING))
		return -EINVAL;

	if (adding && FUNC7(dev)) {
		struct vxlan_dev *vxlan = FUNC6(dev);

		if (!(vxlan->cfg.flags & VXLAN_F_LEARN))
			return -EINVAL;
	}

	br_dev = FUNC5(dev);
	if (!br_dev)
		return -EINVAL;

	bridge_device = FUNC2(mlxsw_sp->bridge, br_dev);
	if (!bridge_device)
		return -EINVAL;

	*p_vid = bridge_device->ops->fid_vid(bridge_device, fid);

	return 0;
}