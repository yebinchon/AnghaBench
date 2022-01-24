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
 int ENODEV ; 
 struct net_failover_info* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *slave_dev,
					     struct net_device *failover_dev)
{
	struct net_device *standby_dev, *primary_dev;
	struct net_failover_info *nfo_info;

	nfo_info = FUNC0(failover_dev);
	primary_dev = FUNC1(nfo_info->primary_dev);
	standby_dev = FUNC1(nfo_info->standby_dev);

	if (slave_dev != primary_dev && slave_dev != standby_dev)
		return -ENODEV;

	return 0;
}