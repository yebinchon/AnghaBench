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
struct e1000_rx_ring {int dummy; } ;
struct e1000_adapter {int num_rx_queues; int /*<<< orphan*/  (* alloc_rx_buf ) (struct e1000_adapter*,struct e1000_rx_ring*,int /*<<< orphan*/ ) ;struct e1000_rx_ring* rx_ring; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_rx_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*,struct e1000_rx_ring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct e1000_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int i;

	FUNC5(netdev);

	FUNC4(adapter);
	FUNC3(adapter);

	FUNC2(adapter);
	FUNC6(adapter);
	FUNC1(adapter);
	/* call E1000_DESC_UNUSED which always leaves
	 * at least 1 descriptor unused to make sure
	 * next_to_use != next_to_clean
	 */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct e1000_rx_ring *ring = &adapter->rx_ring[i];
		adapter->alloc_rx_buf(adapter, ring,
				      FUNC0(ring));
	}
}