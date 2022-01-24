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
struct netdev_lag_lower_state_info {int link_up; int tx_enabled; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_lag_lower_state_info*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *slave_dev,
					     struct net_device *primary_dev,
					     struct net_device *standby_dev)
{
	struct netdev_lag_lower_state_info info;

	if (FUNC1(slave_dev))
		info.link_up = true;
	else
		info.link_up = false;

	if (slave_dev == primary_dev) {
		if (FUNC2(primary_dev))
			info.tx_enabled = true;
		else
			info.tx_enabled = false;
	} else {
		if ((primary_dev && FUNC2(primary_dev)) ||
		    (!FUNC2(standby_dev)))
			info.tx_enabled = false;
		else
			info.tx_enabled = true;
	}

	FUNC0(slave_dev, &info);
}