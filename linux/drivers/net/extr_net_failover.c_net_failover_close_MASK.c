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
 struct net_failover_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct net_failover_info *nfo_info = FUNC1(dev);
	struct net_device *slave_dev;

	FUNC2(dev);

	slave_dev = FUNC3(nfo_info->primary_dev);
	if (slave_dev)
		FUNC0(slave_dev);

	slave_dev = FUNC3(nfo_info->standby_dev);
	if (slave_dev)
		FUNC0(slave_dev);

	return 0;
}