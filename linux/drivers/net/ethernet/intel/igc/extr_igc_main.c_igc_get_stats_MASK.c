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
struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;
struct igc_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IGC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct igc_adapter*) ; 
 struct igc_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device_stats *FUNC3(struct net_device *netdev)
{
	struct igc_adapter *adapter = FUNC1(netdev);

	if (!FUNC2(__IGC_RESETTING, &adapter->state))
		FUNC0(adapter);

	/* only return the current stats */
	return &netdev->stats;
}