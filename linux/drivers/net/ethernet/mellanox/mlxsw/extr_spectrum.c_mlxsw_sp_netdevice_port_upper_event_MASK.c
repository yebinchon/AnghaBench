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
struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  linking; struct net_device* upper_dev; int /*<<< orphan*/  upper_info; int /*<<< orphan*/  info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  NETDEV_CHANGEUPPER 129 
#define  NETDEV_PRECHANGEUPPER 128 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct net_device*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC6 (struct mlxsw_sp_port*,struct net_device*,struct net_device*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_port*,struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_port*) ; 
 int FUNC9 (struct mlxsw_sp_port*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp_port*,struct net_device*) ; 
 int FUNC11 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_sp_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 struct net_device* FUNC16 (struct net_device*) ; 
 struct netlink_ext_ack* FUNC17 (int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_port* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 struct net_device* FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct net_device*) ; 

__attribute__((used)) static int FUNC28(struct net_device *lower_dev,
					       struct net_device *dev,
					       unsigned long event, void *ptr)
{
	struct netdev_notifier_changeupper_info *info;
	struct mlxsw_sp_port *mlxsw_sp_port;
	struct netlink_ext_ack *extack;
	struct net_device *upper_dev;
	struct mlxsw_sp *mlxsw_sp;
	int err = 0;

	mlxsw_sp_port = FUNC18(dev);
	mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	info = ptr;
	extack = FUNC17(&info->info);

	switch (event) {
	case NETDEV_PRECHANGEUPPER:
		upper_dev = info->upper_dev;
		if (!FUNC1(upper_dev) &&
		    !FUNC21(upper_dev) &&
		    !FUNC19(upper_dev) &&
		    !FUNC24(upper_dev) &&
		    !FUNC23(upper_dev)) {
			FUNC0(extack, "Unknown upper device type");
			return -EINVAL;
		}
		if (!info->linking)
			break;
		if (FUNC19(upper_dev) &&
		    !FUNC2(mlxsw_sp, upper_dev) &&
		    FUNC3(upper_dev) &&
		    !FUNC4(upper_dev, extack))
			return -EOPNOTSUPP;
		if (FUNC15(upper_dev) &&
		    (!FUNC19(upper_dev) ||
		     !FUNC2(mlxsw_sp,
							  upper_dev))) {
			FUNC0(extack, "Enslaving a port to a device that already has an upper device is not supported");
			return -EINVAL;
		}
		if (FUNC21(upper_dev) &&
		    !FUNC5(mlxsw_sp, upper_dev,
					       info->upper_info, extack))
			return -EINVAL;
		if (FUNC21(upper_dev) && FUNC27(dev)) {
			FUNC0(extack, "Master device is a LAG master and this device has a VLAN");
			return -EINVAL;
		}
		if (FUNC22(dev) && FUNC1(upper_dev) &&
		    !FUNC21(FUNC26(upper_dev))) {
			FUNC0(extack, "Can not put a VLAN on a LAG port");
			return -EINVAL;
		}
		if (FUNC23(upper_dev) &&
		    !FUNC13(mlxsw_sp, lower_dev)) {
			FUNC0(extack, "macvlan is only supported on top of router interfaces");
			return -EOPNOTSUPP;
		}
		if (FUNC24(upper_dev) && FUNC27(dev)) {
			FUNC0(extack, "Master device is an OVS master and this device has a VLAN");
			return -EINVAL;
		}
		if (FUNC25(dev) && FUNC1(upper_dev)) {
			FUNC0(extack, "Can not put a VLAN on an OVS port");
			return -EINVAL;
		}
		break;
	case NETDEV_CHANGEUPPER:
		upper_dev = info->upper_dev;
		if (FUNC19(upper_dev)) {
			if (info->linking)
				err = FUNC6(mlxsw_sp_port,
								lower_dev,
								upper_dev,
								extack);
			else
				FUNC7(mlxsw_sp_port,
							   lower_dev,
							   upper_dev);
		} else if (FUNC21(upper_dev)) {
			if (info->linking) {
				err = FUNC9(mlxsw_sp_port,
							     upper_dev);
			} else {
				FUNC8(mlxsw_sp_port);
				FUNC10(mlxsw_sp_port,
							upper_dev);
			}
		} else if (FUNC24(upper_dev)) {
			if (info->linking)
				err = FUNC11(mlxsw_sp_port);
			else
				FUNC12(mlxsw_sp_port);
		} else if (FUNC23(upper_dev)) {
			if (!info->linking)
				FUNC14(mlxsw_sp, upper_dev);
		} else if (FUNC1(upper_dev)) {
			struct net_device *br_dev;

			if (!FUNC20(upper_dev))
				break;
			if (info->linking)
				break;
			br_dev = FUNC16(upper_dev);
			FUNC7(mlxsw_sp_port, upper_dev,
						   br_dev);
		}
		break;
	}

	return err;
}