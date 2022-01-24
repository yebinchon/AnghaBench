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
struct net_device {int flags; } ;
struct be_adapter {int /*<<< orphan*/  rx_filter_lock; struct net_device* netdev; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	FUNC5(&adapter->rx_filter_lock);

	if (netdev->flags & IFF_PROMISC) {
		if (!FUNC0(adapter))
			FUNC1(adapter);
	} else if (FUNC0(adapter)) {
		/* We need to re-program the vlan-list or clear
		 * vlan-promisc mode (if needed) when the interface
		 * comes out of promisc mode.
		 */
		FUNC4(adapter);
	}

	FUNC3(adapter);
	FUNC2(adapter);

	FUNC6(&adapter->rx_filter_lock);
}