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
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  linking; struct net_device* upper_dev; int /*<<< orphan*/  info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  NETDEV_CHANGEUPPER 129 
#define  NETDEV_PRECHANGEUPPER 128 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct netlink_ext_ack*) ; 
 int FUNC5 (struct mlxsw_sp_port*,struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_port*,struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct netlink_ext_ack* FUNC10 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_port* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct net_device *vlan_dev,
					      struct net_device *dev,
					      unsigned long event, void *ptr,
					      u16 vid)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC11(dev);
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct netdev_notifier_changeupper_info *info = ptr;
	struct netlink_ext_ack *extack;
	struct net_device *upper_dev;
	int err = 0;

	extack = FUNC10(&info->info);

	switch (event) {
	case NETDEV_PRECHANGEUPPER:
		upper_dev = info->upper_dev;
		if (!FUNC12(upper_dev) &&
		    !FUNC13(upper_dev)) {
			FUNC0(extack, "Unknown upper device type");
			return -EINVAL;
		}
		if (!info->linking)
			break;
		if (FUNC12(upper_dev) &&
		    !FUNC2(mlxsw_sp, upper_dev) &&
		    FUNC3(upper_dev) &&
		    !FUNC4(upper_dev, extack))
			return -EOPNOTSUPP;
		if (FUNC9(upper_dev) &&
		    (!FUNC12(upper_dev) ||
		     !FUNC2(mlxsw_sp,
							  upper_dev))) {
			FUNC0(extack, "Enslaving a port to a device that already has an upper device is not supported");
			return -EINVAL;
		}
		if (FUNC13(upper_dev) &&
		    !FUNC7(mlxsw_sp, vlan_dev)) {
			FUNC0(extack, "macvlan is only supported on top of router interfaces");
			return -EOPNOTSUPP;
		}
		break;
	case NETDEV_CHANGEUPPER:
		upper_dev = info->upper_dev;
		if (FUNC12(upper_dev)) {
			if (info->linking)
				err = FUNC5(mlxsw_sp_port,
								vlan_dev,
								upper_dev,
								extack);
			else
				FUNC6(mlxsw_sp_port,
							   vlan_dev,
							   upper_dev);
		} else if (FUNC13(upper_dev)) {
			if (!info->linking)
				FUNC8(mlxsw_sp, upper_dev);
		} else {
			err = -EINVAL;
			FUNC1(1);
		}
		break;
	}

	return err;
}