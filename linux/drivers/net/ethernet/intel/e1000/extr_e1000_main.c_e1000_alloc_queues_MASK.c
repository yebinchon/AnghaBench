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
struct e1000_tx_ring {int dummy; } ;
struct e1000_rx_ring {int dummy; } ;
struct e1000_adapter {void* tx_ring; void* rx_ring; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  num_tx_queues; } ;

/* Variables and functions */
 int E1000_SUCCESS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static int FUNC2(struct e1000_adapter *adapter)
{
	adapter->tx_ring = FUNC0(adapter->num_tx_queues,
				   sizeof(struct e1000_tx_ring), GFP_KERNEL);
	if (!adapter->tx_ring)
		return -ENOMEM;

	adapter->rx_ring = FUNC0(adapter->num_rx_queues,
				   sizeof(struct e1000_rx_ring), GFP_KERNEL);
	if (!adapter->rx_ring) {
		FUNC1(adapter->tx_ring);
		return -ENOMEM;
	}

	return E1000_SUCCESS;
}