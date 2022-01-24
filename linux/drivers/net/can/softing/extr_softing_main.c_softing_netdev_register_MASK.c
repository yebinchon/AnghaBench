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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  netdev_sysfs_group ; 
 int FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev)
{
	int ret;

	ret = FUNC2(netdev);
	if (ret) {
		FUNC0(&netdev->dev, "register failed\n");
		return ret;
	}
	if (FUNC3(&netdev->dev.kobj, &netdev_sysfs_group) < 0)
		FUNC1(netdev, "sysfs group failed\n");

	return 0;
}