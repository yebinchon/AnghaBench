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
struct ixgbe_adapter {int num_tx_queues; int num_xdp_queues; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * xdp_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC3(struct ixgbe_adapter *adapter)
{
	int i, j = 0, err = 0;

	for (i = 0; i < adapter->num_tx_queues; i++) {
		err = FUNC2(adapter->tx_ring[i]);
		if (!err)
			continue;

		FUNC0(probe, "Allocation for Tx Queue %u failed\n", i);
		goto err_setup_tx;
	}
	for (j = 0; j < adapter->num_xdp_queues; j++) {
		err = FUNC2(adapter->xdp_ring[j]);
		if (!err)
			continue;

		FUNC0(probe, "Allocation for Tx Queue %u failed\n", j);
		goto err_setup_tx;
	}

	return 0;
err_setup_tx:
	/* rewind the index freeing the rings as we go */
	while (j--)
		FUNC1(adapter->xdp_ring[j]);
	while (i--)
		FUNC1(adapter->tx_ring[i]);
	return err;
}