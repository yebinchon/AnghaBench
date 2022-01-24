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
struct net_failover_info {int /*<<< orphan*/  failover_stats; int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  primary_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*,struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct net_failover_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct net_device* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *slave_dev,
					  struct net_device *failover_dev)
{
	struct net_device *primary_dev, *standby_dev;
	struct net_failover_info *nfo_info;

	nfo_info = FUNC3(failover_dev);

	primary_dev = FUNC8(nfo_info->primary_dev);
	standby_dev = FUNC8(nfo_info->standby_dev);

	if (slave_dev != primary_dev && slave_dev != standby_dev)
		return -ENODEV;

	if ((primary_dev && FUNC2(primary_dev)) ||
	    (standby_dev && FUNC2(standby_dev))) {
		FUNC5(failover_dev);
		FUNC7(failover_dev);
	} else {
		FUNC0(failover_dev, &nfo_info->failover_stats);
		FUNC4(failover_dev);
		FUNC6(failover_dev);
	}

	FUNC1(slave_dev, primary_dev, standby_dev);

	return 0;
}