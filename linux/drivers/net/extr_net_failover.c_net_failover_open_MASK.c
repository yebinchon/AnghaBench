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
struct net_failover_info {int /*<<< orphan*/  standby_dev; int /*<<< orphan*/  primary_dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 struct net_failover_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct net_failover_info *nfo_info = FUNC3(dev);
	struct net_device *primary_dev, *standby_dev;
	int err;

	primary_dev = FUNC7(nfo_info->primary_dev);
	if (primary_dev) {
		err = FUNC1(primary_dev, NULL);
		if (err)
			goto err_primary_open;
	}

	standby_dev = FUNC7(nfo_info->standby_dev);
	if (standby_dev) {
		err = FUNC1(standby_dev, NULL);
		if (err)
			goto err_standby_open;
	}

	if ((primary_dev && FUNC2(primary_dev)) ||
	    (standby_dev && FUNC2(standby_dev))) {
		FUNC4(dev);
		FUNC6(dev);
	}

	return 0;

err_standby_open:
	FUNC0(primary_dev);
err_primary_open:
	FUNC5(dev);
	return err;
}