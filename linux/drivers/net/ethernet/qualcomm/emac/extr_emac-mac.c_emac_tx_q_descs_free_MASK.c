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
struct TYPE_6__ {unsigned int count; size_t size; scalar_t__ produce_idx; scalar_t__ consume_idx; int /*<<< orphan*/  v_addr; int /*<<< orphan*/  tpbuff; } ;
struct emac_tx_queue {TYPE_3__ tpd; } ;
struct emac_buffer {int /*<<< orphan*/ * skb; scalar_t__ dma_addr; int /*<<< orphan*/  length; } ;
struct emac_adapter {TYPE_2__* netdev; struct emac_tx_queue tx_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct emac_buffer* FUNC0 (struct emac_tx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(struct emac_adapter *adpt)
{
	struct emac_tx_queue *tx_q = &adpt->tx_q;
	unsigned int i;
	size_t size;

	/* ring already cleared, nothing to do */
	if (!tx_q->tpd.tpbuff)
		return;

	for (i = 0; i < tx_q->tpd.count; i++) {
		struct emac_buffer *tpbuf = FUNC0(tx_q, i);

		if (tpbuf->dma_addr) {
			FUNC2(adpt->netdev->dev.parent,
					 tpbuf->dma_addr, tpbuf->length,
					 DMA_TO_DEVICE);
			tpbuf->dma_addr = 0;
		}
		if (tpbuf->skb) {
			FUNC1(tpbuf->skb);
			tpbuf->skb = NULL;
		}
	}

	size = sizeof(struct emac_buffer) * tx_q->tpd.count;
	FUNC3(tx_q->tpd.tpbuff, 0, size);

	/* clear the descriptor ring */
	FUNC3(tx_q->tpd.v_addr, 0, tx_q->tpd.size);

	tx_q->tpd.consume_idx = 0;
	tx_q->tpd.produce_idx = 0;
}