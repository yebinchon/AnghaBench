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
struct e1000_adapter {int num_tx_queues; int num_rx_queues; int /*<<< orphan*/  flags; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  rx_buffer_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MAXIMUM_ETHERNET_VLAN_SIZE ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 scalar_t__ FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct e1000_adapter *adapter)
{
	adapter->rx_buffer_len = MAXIMUM_ETHERNET_VLAN_SIZE;

	adapter->num_tx_queues = 1;
	adapter->num_rx_queues = 1;

	if (FUNC0(adapter)) {
		FUNC2(probe, "Unable to allocate memory for queues\n");
		return -ENOMEM;
	}

	/* Explicitly disable IRQ since the NIC can be in any state. */
	FUNC1(adapter);

	FUNC4(&adapter->stats_lock);

	FUNC3(__E1000_DOWN, &adapter->flags);

	return 0;
}