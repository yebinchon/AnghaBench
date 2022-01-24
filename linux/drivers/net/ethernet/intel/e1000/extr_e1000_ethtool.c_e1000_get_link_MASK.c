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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int get_link_status; } ;
struct e1000_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC1(netdev);

	/* If the link is not reported up to netdev, interrupts are disabled,
	 * and so the physical link state may have changed since we last
	 * looked. Set get_link_status to make sure that the true link
	 * state is interrogated, rather than pulling a cached and possibly
	 * stale link state from the driver.
	 */
	if (!FUNC2(netdev))
		adapter->hw.get_link_status = 1;

	return FUNC0(adapter);
}