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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  fid; TYPE_1__* ops; int /*<<< orphan*/  rif_index; } ;
struct mlxsw_sp {int dummy; } ;
struct macvlan_dev {int /*<<< orphan*/  lowerdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fdb_del ) (struct mlxsw_sp_rif*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_rif* FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct macvlan_dev* FUNC5 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_rif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp *mlxsw_sp,
				    const struct net_device *macvlan_dev,
				    struct netlink_ext_ack *extack)
{
	struct macvlan_dev *vlan = FUNC5(macvlan_dev);
	struct mlxsw_sp_rif *rif;
	int err;

	rif = FUNC3(mlxsw_sp, vlan->lowerdev);
	if (!rif) {
		FUNC0(extack, "macvlan is only supported on top of router interfaces");
		return -EOPNOTSUPP;
	}

	err = FUNC2(mlxsw_sp, macvlan_dev->dev_addr,
				  FUNC1(rif->fid), true);
	if (err)
		return err;

	err = FUNC4(mlxsw_sp, rif->rif_index,
				   macvlan_dev->dev_addr, true);
	if (err)
		goto err_rif_vrrp_add;

	/* Make sure the bridge driver does not have this MAC pointing at
	 * some other port.
	 */
	if (rif->ops->fdb_del)
		rif->ops->fdb_del(rif, macvlan_dev->dev_addr);

	return 0;

err_rif_vrrp_add:
	FUNC2(mlxsw_sp, macvlan_dev->dev_addr,
			    FUNC1(rif->fid), false);
	return err;
}