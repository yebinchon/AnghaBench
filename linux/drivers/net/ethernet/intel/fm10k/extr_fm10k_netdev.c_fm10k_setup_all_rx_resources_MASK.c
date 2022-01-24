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
struct fm10k_intfc {int num_rx_queues; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static int FUNC3(struct fm10k_intfc *interface)
{
	int i, err;

	for (i = 0; i < interface->num_rx_queues; i++) {
		err = FUNC1(interface->rx_ring[i]);
		if (!err)
			continue;

		FUNC2(interface, probe, interface->netdev,
			  "Allocation for Rx Queue %u failed\n", i);
		goto err_setup_rx;
	}

	return 0;
err_setup_rx:
	/* rewind the index freeing the rings as we go */
	while (i--)
		FUNC0(interface->rx_ring[i]);
	return err;
}