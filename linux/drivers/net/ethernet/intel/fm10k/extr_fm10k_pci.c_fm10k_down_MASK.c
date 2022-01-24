#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int (* stop_hw ) (struct fm10k_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; int /*<<< orphan*/  hw_addr; } ;
struct fm10k_intfc {int num_tx_queues; TYPE_3__* pdev; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  state; struct fm10k_hw hw; struct net_device* netdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FM10K_ERR_REQUESTS_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TX_DMA_DRAIN_RETRIES ; 
 int /*<<< orphan*/  __FM10K_DOWN ; 
 int /*<<< orphan*/  __FM10K_UPDATING_STATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (struct fm10k_hw*) ; 
 int FUNC12 (struct fm10k_hw*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 

void FUNC15(struct fm10k_intfc *interface)
{
	struct net_device *netdev = interface->netdev;
	struct fm10k_hw *hw = &interface->hw;
	int err, i = 0, count = 0;

	/* signal that we are down to the interrupt handler and service task */
	if (FUNC13(__FM10K_DOWN, interface->state))
		return;

	/* call carrier off first to avoid false dev_watchdog timeouts */
	FUNC8(netdev);

	/* disable transmits */
	FUNC10(netdev);
	FUNC9(netdev);

	/* reset Rx filters */
	FUNC6(interface);

	/* disable polling routines */
	FUNC5(interface);

	/* capture stats one last time before stopping interface */
	FUNC7(interface);

	/* prevent updating statistics while we're down */
	while (FUNC13(__FM10K_UPDATING_STATS, interface->state))
		FUNC14(1000, 2000);

	/* skip waiting for TX DMA if we lost PCIe link */
	if (FUNC0(hw->hw_addr))
		goto skip_tx_dma_drain;

	/* In some rare circumstances it can take a while for Tx queues to
	 * quiesce and be fully disabled. Attempt to .stop_hw() first, and
	 * then if we get ERR_REQUESTS_PENDING, go ahead and wait in a loop
	 * until the Tx queues have emptied, or until a number of retries. If
	 * we fail to clear within the retry loop, we will issue a warning
	 * indicating that Tx DMA is probably hung. Note this means we call
	 * .stop_hw() twice but this shouldn't cause any problems.
	 */
	err = hw->mac.ops.stop_hw(hw);
	if (err != FM10K_ERR_REQUESTS_PENDING)
		goto skip_tx_dma_drain;

#define TX_DMA_DRAIN_RETRIES 25
	for (count = 0; count < TX_DMA_DRAIN_RETRIES; count++) {
		FUNC14(10000, 20000);

		/* start checking at the last ring to have pending Tx */
		for (; i < interface->num_tx_queues; i++)
			if (FUNC4(interface->tx_ring[i], false))
				break;

		/* if all the queues are drained, we can break now */
		if (i == interface->num_tx_queues)
			break;
	}

	if (count >= TX_DMA_DRAIN_RETRIES)
		FUNC1(&interface->pdev->dev,
			"Tx queues failed to drain after %d tries. Tx DMA is probably hung.\n",
			count);
skip_tx_dma_drain:
	/* Disable DMA engine for Tx/Rx */
	err = hw->mac.ops.stop_hw(hw);
	if (err == FM10K_ERR_REQUESTS_PENDING)
		FUNC1(&interface->pdev->dev,
			"due to pending requests hw was not shut down gracefully\n");
	else if (err)
		FUNC1(&interface->pdev->dev, "stop_hw failed: %d\n", err);

	/* free any buffers still on the rings */
	FUNC3(interface);
	FUNC2(interface);
}