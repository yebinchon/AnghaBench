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
struct ixgbevf_adapter {int num_rx_queues; int /*<<< orphan*/  state; int /*<<< orphan*/  num_xdp_queues; int /*<<< orphan*/  num_tx_queues; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ixgbevf_adapter *adapter)
{
	int err;

	/* Number of supported queues */
	FUNC4(adapter);

	err = FUNC3(adapter);
	if (err) {
		FUNC0(&adapter->hw,
		       "Unable to setup interrupt capabilities\n");
		goto err_set_interrupt;
	}

	err = FUNC1(adapter);
	if (err) {
		FUNC0(&adapter->hw, "Unable to allocate memory for queue vectors\n");
		goto err_alloc_q_vectors;
	}

	FUNC0(&adapter->hw, "Multiqueue %s: Rx Queue count = %u, Tx Queue count = %u XDP Queue count %u\n",
	       (adapter->num_rx_queues > 1) ? "Enabled" : "Disabled",
	       adapter->num_rx_queues, adapter->num_tx_queues,
	       adapter->num_xdp_queues);

	FUNC5(__IXGBEVF_DOWN, &adapter->state);

	return 0;
err_alloc_q_vectors:
	FUNC2(adapter);
err_set_interrupt:
	return err;
}