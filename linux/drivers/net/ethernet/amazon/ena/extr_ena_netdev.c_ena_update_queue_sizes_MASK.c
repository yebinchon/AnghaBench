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
typedef  void* u32 ;
struct ena_adapter {void* requested_rx_ring_size; void* requested_tx_ring_size; int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*) ; 
 int FUNC2 (struct ena_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct ena_adapter *adapter,
			   u32 new_tx_size,
			   u32 new_rx_size)
{
	bool dev_up;

	dev_up = FUNC3(ENA_FLAG_DEV_UP, &adapter->flags);
	FUNC0(adapter->netdev);
	adapter->requested_tx_ring_size = new_tx_size;
	adapter->requested_rx_ring_size = new_rx_size;
	FUNC1(adapter);
	return dev_up ? FUNC2(adapter) : 0;
}