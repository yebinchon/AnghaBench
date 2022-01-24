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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct net_device *rmnet_dev, int enable)
{
	FUNC0(rmnet_dev, "Setting VND TX queue state to %d\n", enable);
	/* Although we expect similar number of enable/disable
	 * commands, optimize for the disable. That is more
	 * latency sensitive than enable
	 */
	if (FUNC3(enable))
		FUNC2(rmnet_dev);
	else
		FUNC1(rmnet_dev);

	return 0;
}