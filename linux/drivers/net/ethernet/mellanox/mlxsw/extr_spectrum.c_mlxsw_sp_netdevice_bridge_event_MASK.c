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
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  linking; struct net_device* upper_dev; int /*<<< orphan*/  info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  NETDEV_CHANGEUPPER 129 
#define  NETDEV_PRECHANGEUPPER 128 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct mlxsw_sp* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct net_device*) ; 
 struct netlink_ext_ack* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *br_dev,
					   unsigned long event, void *ptr)
{
	struct mlxsw_sp *mlxsw_sp = FUNC2(br_dev);
	struct netdev_notifier_changeupper_info *info = ptr;
	struct netlink_ext_ack *extack;
	struct net_device *upper_dev;

	if (!mlxsw_sp)
		return 0;

	extack = FUNC6(&info->info);

	switch (event) {
	case NETDEV_PRECHANGEUPPER:
		upper_dev = info->upper_dev;
		if (!FUNC1(upper_dev) && !FUNC7(upper_dev)) {
			FUNC0(extack, "Unknown upper device type");
			return -EOPNOTSUPP;
		}
		if (!info->linking)
			break;
		if (FUNC7(upper_dev) &&
		    !FUNC4(mlxsw_sp, br_dev)) {
			FUNC0(extack, "macvlan is only supported on top of router interfaces");
			return -EOPNOTSUPP;
		}
		break;
	case NETDEV_CHANGEUPPER:
		upper_dev = info->upper_dev;
		if (info->linking)
			break;
		if (FUNC1(upper_dev))
			FUNC3(mlxsw_sp, upper_dev);
		if (FUNC7(upper_dev))
			FUNC5(mlxsw_sp, upper_dev);
		break;
	}

	return 0;
}