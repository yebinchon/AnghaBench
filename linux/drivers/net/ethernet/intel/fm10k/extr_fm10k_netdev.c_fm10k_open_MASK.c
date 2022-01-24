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
struct fm10k_intfc {int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int FUNC5 (struct fm10k_intfc*) ; 
 int FUNC6 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_intfc*) ; 
 struct fm10k_intfc* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

int FUNC12(struct net_device *netdev)
{
	struct fm10k_intfc *interface = FUNC8(netdev);
	int err;

	/* allocate transmit descriptors */
	err = FUNC6(interface);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC5(interface);
	if (err)
		goto err_setup_rx;

	/* allocate interrupt resources */
	err = FUNC3(interface);
	if (err)
		goto err_req_irq;

	/* setup GLORT assignment for this port */
	FUNC4(interface);

	/* Notify the stack of the actual queue counts */
	err = FUNC10(netdev,
					   interface->num_tx_queues);
	if (err)
		goto err_set_queues;

	err = FUNC9(netdev,
					   interface->num_rx_queues);
	if (err)
		goto err_set_queues;

	FUNC11(netdev);

	FUNC7(interface);

	return 0;

err_set_queues:
	FUNC2(interface);
err_req_irq:
	FUNC0(interface);
err_setup_rx:
	FUNC1(interface);
err_setup_tx:
	return err;
}