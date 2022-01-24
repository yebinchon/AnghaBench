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
typedef  int u64 ;
struct tx_ring {scalar_t__ used; struct tcb* tcb_qtail; struct tcb* tcb_qhead; struct tx_desc* tx_desc_ring; } ;
struct tx_desc {int addr_lo; int /*<<< orphan*/  len_vlan; scalar_t__ addr_hi; } ;
struct tcb {struct tcb* next; TYPE_3__* skb; int /*<<< orphan*/  index_start; int /*<<< orphan*/  index; } ;
struct net_device_stats {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct et131x_adapter {int /*<<< orphan*/  tcb_ready_qlock; TYPE_2__* pdev; struct tx_ring tx_ring; TYPE_1__* netdev; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ET_DMA10_MASK ; 
 int /*<<< orphan*/  ET_DMA10_WRAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NUM_DESC_PER_RING_TX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC8(struct et131x_adapter *adapter,
				    struct tcb *tcb)
{
	unsigned long flags;
	struct tx_desc *desc = NULL;
	struct net_device_stats *stats = &adapter->netdev->stats;
	struct tx_ring *tx_ring = &adapter->tx_ring;
	u64  dma_addr;

	if (tcb->skb) {
		stats->tx_bytes += tcb->skb->len;

		/* Iterate through the TX descriptors on the ring
		 * corresponding to this packet and umap the fragments
		 * they point to
		 */
		do {
			desc = tx_ring->tx_desc_ring +
			       FUNC0(tcb->index_start);

			dma_addr = desc->addr_lo;
			dma_addr |= (u64)desc->addr_hi << 32;

			FUNC4(&adapter->pdev->dev,
					 dma_addr,
					 desc->len_vlan, DMA_TO_DEVICE);

			FUNC2(&tcb->index_start, 1);
			if (FUNC0(tcb->index_start) >=
							NUM_DESC_PER_RING_TX) {
				tcb->index_start &= ~ET_DMA10_MASK;
				tcb->index_start ^= ET_DMA10_WRAP;
			}
		} while (desc != tx_ring->tx_desc_ring + FUNC0(tcb->index));

		FUNC3(tcb->skb);
	}

	FUNC5(tcb, 0, sizeof(struct tcb));

	/* Add the TCB to the Ready Q */
	FUNC6(&adapter->tcb_ready_qlock, flags);

	stats->tx_packets++;

	if (tx_ring->tcb_qtail)
		tx_ring->tcb_qtail->next = tcb;
	else /* Apparently ready Q is empty. */
		tx_ring->tcb_qhead = tcb;

	tx_ring->tcb_qtail = tcb;

	FUNC7(&adapter->tcb_ready_qlock, flags);
	FUNC1(tx_ring->used < 0);
}