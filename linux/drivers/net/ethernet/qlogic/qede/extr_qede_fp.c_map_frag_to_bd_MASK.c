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
struct qede_tx_queue {int /*<<< orphan*/  dev; } ;
struct eth_tx_bd {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eth_tx_bd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qede_tx_queue *txq,
			  skb_frag_t *frag, struct eth_tx_bd *bd)
{
	dma_addr_t mapping;

	/* Map skb non-linear frag data for DMA */
	mapping = FUNC2(txq->dev, frag, 0,
				   FUNC3(frag), DMA_TO_DEVICE);
	if (FUNC4(FUNC1(txq->dev, mapping)))
		return -ENOMEM;

	/* Setup the data pointer of the frag data */
	FUNC0(bd, mapping, FUNC3(frag));

	return 0;
}