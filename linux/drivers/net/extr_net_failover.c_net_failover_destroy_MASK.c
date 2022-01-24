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
struct failover {int /*<<< orphan*/  failover_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct failover*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct net_failover_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

void FUNC10(struct failover *failover)
{
	struct net_failover_info *nfo_info;
	struct net_device *failover_dev;
	struct net_device *slave_dev;

	if (!failover)
		return;

	failover_dev = FUNC5(failover->failover_dev);
	nfo_info = FUNC3(failover_dev);

	FUNC4(failover_dev);

	FUNC7();

	slave_dev = FUNC6(nfo_info->primary_dev);
	if (slave_dev)
		FUNC0(slave_dev);

	slave_dev = FUNC6(nfo_info->standby_dev);
	if (slave_dev)
		FUNC0(slave_dev);

	FUNC1(failover);

	FUNC9(failover_dev);

	FUNC8();

	FUNC2(failover_dev);
}