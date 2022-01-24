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
struct ixgbe_adapter {int num_rx_queues; int /*<<< orphan*/  state; int /*<<< orphan*/  num_xdp_queues; int /*<<< orphan*/  num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct ixgbe_adapter *adapter)
{
	int err;

	/* Number of supported queues */
	FUNC6(adapter);

	/* Set interrupt mode */
	FUNC5(adapter);

	err = FUNC2(adapter);
	if (err) {
		FUNC0("Unable to allocate memory for queue vectors\n");
		goto err_alloc_q_vectors;
	}

	FUNC3(adapter);

	FUNC1("Multiqueue %s: Rx Queue count = %u, Tx Queue count = %u XDP Queue count = %u\n",
		   (adapter->num_rx_queues > 1) ? "Enabled" : "Disabled",
		   adapter->num_rx_queues, adapter->num_tx_queues,
		   adapter->num_xdp_queues);

	FUNC7(__IXGBE_DOWN, &adapter->state);

	return 0;

err_alloc_q_vectors:
	FUNC4(adapter);
	return err;
}