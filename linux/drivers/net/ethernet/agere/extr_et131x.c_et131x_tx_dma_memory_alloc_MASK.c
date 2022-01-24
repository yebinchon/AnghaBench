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
typedef  int /*<<< orphan*/  u32 ;
struct tx_ring {void* tx_status; int /*<<< orphan*/  tx_status_pa; void* tx_desc_ring; int /*<<< orphan*/  tx_desc_ring_pa; int /*<<< orphan*/  tcb_ring; } ;
struct tx_desc {int dummy; } ;
struct tcb {int dummy; } ;
struct et131x_adapter {TYPE_1__* pdev; struct tx_ring tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int NUM_DESC_PER_RING_TX ; 
 int /*<<< orphan*/  NUM_TCB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct et131x_adapter *adapter)
{
	int desc_size = 0;
	struct tx_ring *tx_ring = &adapter->tx_ring;

	/* Allocate memory for the TCB's (Transmit Control Block) */
	tx_ring->tcb_ring = FUNC2(NUM_TCB, sizeof(struct tcb),
				    GFP_KERNEL | GFP_DMA);
	if (!tx_ring->tcb_ring)
		return -ENOMEM;

	desc_size = (sizeof(struct tx_desc) * NUM_DESC_PER_RING_TX);
	tx_ring->tx_desc_ring = FUNC1(&adapter->pdev->dev,
						   desc_size,
						   &tx_ring->tx_desc_ring_pa,
						   GFP_KERNEL);
	if (!tx_ring->tx_desc_ring) {
		FUNC0(&adapter->pdev->dev,
			"Cannot alloc memory for Tx Ring\n");
		return -ENOMEM;
	}

	tx_ring->tx_status = FUNC1(&adapter->pdev->dev,
						    sizeof(u32),
						    &tx_ring->tx_status_pa,
						    GFP_KERNEL);
	if (!tx_ring->tx_status) {
		FUNC0(&adapter->pdev->dev,
			"Cannot alloc memory for Tx status block\n");
		return -ENOMEM;
	}
	return 0;
}