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
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct netfront_info {TYPE_1__* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** sysfs_groups; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct netfront_info*) ; 
 struct netfront_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenbus_device*,int,char*) ; 
 struct net_device* FUNC5 (struct xenbus_device*) ; 
 int /*<<< orphan*/  xennet_dev_group ; 

__attribute__((used)) static int FUNC6(struct xenbus_device *dev,
			  const struct xenbus_device_id *id)
{
	int err;
	struct net_device *netdev;
	struct netfront_info *info;

	netdev = FUNC5(dev);
	if (FUNC0(netdev)) {
		err = FUNC1(netdev);
		FUNC4(dev, err, "creating netdev");
		return err;
	}

	info = FUNC3(netdev);
	FUNC2(&dev->dev, info);
#ifdef CONFIG_SYSFS
	info->netdev->sysfs_groups[0] = &xennet_dev_group;
#endif

	return 0;
}