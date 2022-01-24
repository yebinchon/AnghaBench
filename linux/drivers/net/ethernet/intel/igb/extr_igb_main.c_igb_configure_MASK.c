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
struct igb_ring {int dummy; } ;
struct igb_adapter {int num_rx_queues; struct igb_ring** rx_ring; int /*<<< orphan*/  hw; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igb_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct igb_adapter*) ; 

__attribute__((used)) static void FUNC13(struct igb_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int i;

	FUNC4(adapter);
	FUNC8(netdev);
	FUNC12(adapter);

	FUNC6(adapter);

	FUNC11(adapter);
	FUNC9(adapter);
	FUNC10(adapter);

	FUNC5(adapter);
	FUNC2(adapter);
	FUNC1(adapter);

	FUNC7(&adapter->hw);

	/* call igb_desc_unused which always leaves
	 * at least 1 descriptor unused to make sure
	 * next_to_use != next_to_clean
	 */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct igb_ring *ring = adapter->rx_ring[i];
		FUNC0(ring, FUNC3(ring));
	}
}