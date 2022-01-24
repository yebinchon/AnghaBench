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
struct igb_ring {int dummy; } ;
struct igb_adapter {int num_rx_queues; struct igb_ring** rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,struct igb_ring*) ; 

__attribute__((used)) static void FUNC3(struct igb_adapter *adapter)
{
	int i;

	/* set the correct pool for the PF default MAC address in entry 0 */
	FUNC1(adapter);

	/* Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring
	 */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct igb_ring *rx_ring = adapter->rx_ring[i];

		FUNC2(adapter, rx_ring);
		FUNC0(adapter, rx_ring);
	}
}