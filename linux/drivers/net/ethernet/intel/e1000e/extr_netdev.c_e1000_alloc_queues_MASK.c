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
struct e1000_ring {int dummy; } ;
struct e1000_adapter {TYPE_1__* tx_ring; TYPE_1__* rx_ring; int /*<<< orphan*/  rx_ring_count; int /*<<< orphan*/  tx_ring_count; } ;
struct TYPE_2__ {struct e1000_adapter* adapter; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct e1000_adapter *adapter)
{
	int size = sizeof(struct e1000_ring);

	adapter->tx_ring = FUNC2(size, GFP_KERNEL);
	if (!adapter->tx_ring)
		goto err;
	adapter->tx_ring->count = adapter->tx_ring_count;
	adapter->tx_ring->adapter = adapter;

	adapter->rx_ring = FUNC2(size, GFP_KERNEL);
	if (!adapter->rx_ring)
		goto err;
	adapter->rx_ring->count = adapter->rx_ring_count;
	adapter->rx_ring->adapter = adapter;

	return 0;
err:
	FUNC0("Unable to allocate memory for queues\n");
	FUNC1(adapter->rx_ring);
	FUNC1(adapter->tx_ring);
	return -ENOMEM;
}