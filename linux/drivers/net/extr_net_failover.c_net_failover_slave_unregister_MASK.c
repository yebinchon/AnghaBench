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
struct net_failover_info {int /*<<< orphan*/  primary_dev; int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  failover_stats; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,char*,int /*<<< orphan*/ ) ; 
 struct net_failover_info* FUNC9 (struct net_device*) ; 
 struct net_device* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *slave_dev,
					 struct net_device *failover_dev)
{
	struct net_device *standby_dev, *primary_dev;
	struct net_failover_info *nfo_info;
	bool slave_is_standby;

	nfo_info = FUNC9(failover_dev);
	primary_dev = FUNC10(nfo_info->primary_dev);
	standby_dev = FUNC10(nfo_info->standby_dev);

	if (FUNC1(slave_dev != primary_dev && slave_dev != standby_dev))
		return -ENODEV;

	FUNC11(slave_dev, failover_dev);
	FUNC6(slave_dev, failover_dev);
	FUNC4(slave_dev, failover_dev);
	FUNC2(slave_dev);

	nfo_info = FUNC9(failover_dev);
	FUNC3(failover_dev, &nfo_info->failover_stats);

	slave_is_standby = slave_dev->dev.parent == failover_dev->dev.parent;
	if (slave_is_standby) {
		FUNC0(nfo_info->standby_dev, NULL);
	} else {
		FUNC0(nfo_info->primary_dev, NULL);
		if (standby_dev) {
			failover_dev->min_mtu = standby_dev->min_mtu;
			failover_dev->max_mtu = standby_dev->max_mtu;
		}
	}

	FUNC5(slave_dev);

	FUNC7(failover_dev);

	FUNC8(failover_dev, "failover %s slave:%s unregistered\n",
		    slave_is_standby ? "standby" : "primary", slave_dev->name);

	return 0;
}