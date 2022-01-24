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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  NETDEV_CHANGEUPPER 129 
#define  NETDEV_PRECHANGEUPPER 128 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct mlxsw_sp* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct net_device*) ; 
 struct netlink_ext_ack* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *vlan_dev,
						struct net_device *br_dev,
						unsigned long event, void *ptr,
						u16 vid)
{
	struct mlxsw_sp *mlxsw_sp = FUNC1(vlan_dev);
	struct netdev_notifier_changeupper_info *info = ptr;
	struct netlink_ext_ack *extack;
	struct net_device *upper_dev;

	if (!mlxsw_sp)
		return 0;

	extack = FUNC4(&info->info);

	switch (event) {
	case NETDEV_PRECHANGEUPPER:
		upper_dev = info->upper_dev;
		if (!FUNC5(upper_dev)) {
			FUNC0(extack, "Unknown upper device type");
			return -EOPNOTSUPP;
		}
		if (!info->linking)
			break;
		if (FUNC5(upper_dev) &&
		    !FUNC2(mlxsw_sp, vlan_dev)) {
			FUNC0(extack, "macvlan is only supported on top of router interfaces");
			return -EOPNOTSUPP;
		}
		break;
	case NETDEV_CHANGEUPPER:
		upper_dev = info->upper_dev;
		if (info->linking)
			break;
		if (FUNC5(upper_dev))
			FUNC3(mlxsw_sp, upper_dev);
		break;
	}

	return 0;
}