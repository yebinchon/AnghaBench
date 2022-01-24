#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct bnad_tx_unmap {scalar_t__ nvecs; int /*<<< orphan*/ * vectors; struct sk_buff* skb; } ;
struct bnad {TYPE_5__* pcidev; TYPE_2__* tx_info; } ;
struct TYPE_8__ {void* opcode; } ;
struct TYPE_10__ {scalar_t__ num_vectors; scalar_t__ reserved; } ;
struct TYPE_11__ {TYPE_1__ wi_ext; TYPE_3__ wi; } ;
struct bna_txq_entry {TYPE_6__* vector; TYPE_4__ hdr; } ;
struct bna_tcb {scalar_t__ q_depth; scalar_t__ producer_index; scalar_t__* hw_consumer_index; scalar_t__ consumer_index; int /*<<< orphan*/  flags; scalar_t__ sw_q; int /*<<< orphan*/  i_dbell; struct bnad_tx_unmap* unmap_q; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_14__ {scalar_t__ nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_13__ {void* length; int /*<<< orphan*/  host_addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {struct bna_tcb** tcb; } ;

/* Variables and functions */
 scalar_t__ BFI_TX_MAX_DATA_PER_VECTOR ; 
 scalar_t__ BFI_TX_MAX_VECTORS_PER_PKT ; 
 scalar_t__ BFI_TX_MAX_VECTORS_PER_WI ; 
 int /*<<< orphan*/  BNAD_TXQ_FREE_SENT ; 
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bna_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ BNA_TXQ_WI_EXTENSION ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bna_tcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnad*,struct bnad_tx_unmap*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct bnad*,struct bna_tcb*) ; 
 scalar_t__ FUNC9 (struct bnad*,struct bna_tcb*,struct sk_buff*,struct bna_txq_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  dma_len ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int) ; 
 struct bnad* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  netif_queue_stop ; 
 int /*<<< orphan*/  netif_queue_wakeup ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC23 (struct sk_buff*) ; 
 TYPE_7__* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_skb_frag_zero ; 
 int /*<<< orphan*/  tx_skb_headlen_zero ; 
 int /*<<< orphan*/  tx_skb_len_mismatch ; 
 int /*<<< orphan*/  tx_skb_map_failed ; 
 int /*<<< orphan*/  tx_skb_max_vectors ; 
 int /*<<< orphan*/  tx_skb_stopping ; 
 int /*<<< orphan*/  tx_skb_too_short ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static netdev_tx_t
FUNC32(struct sk_buff *skb, struct net_device *netdev)
{
	struct bnad *bnad = FUNC18(netdev);
	u32 txq_id = 0;
	struct bna_tcb *tcb = NULL;
	struct bnad_tx_unmap *unmap_q, *unmap, *head_unmap;
	u32		prod, q_depth, vect_id;
	u32		wis, vectors, len;
	int		i;
	dma_addr_t		dma_addr;
	struct bna_txq_entry *txqent;

	len = FUNC23(skb);

	/* Sanity checks for the skb */

	if (FUNC30(skb->len <= ETH_HLEN)) {
		FUNC11(skb);
		FUNC0(bnad, tx_skb_too_short);
		return NETDEV_TX_OK;
	}
	if (FUNC30(len > BFI_TX_MAX_DATA_PER_VECTOR)) {
		FUNC11(skb);
		FUNC0(bnad, tx_skb_headlen_zero);
		return NETDEV_TX_OK;
	}
	if (FUNC30(len == 0)) {
		FUNC11(skb);
		FUNC0(bnad, tx_skb_headlen_zero);
		return NETDEV_TX_OK;
	}

	tcb = bnad->tx_info[0].tcb[txq_id];

	/*
	 * Takes care of the Tx that is scheduled between clearing the flag
	 * and the netif_tx_stop_all_queues() call.
	 */
	if (FUNC30(!tcb || !FUNC29(BNAD_TXQ_TX_STARTED, &tcb->flags))) {
		FUNC11(skb);
		FUNC0(bnad, tx_skb_stopping);
		return NETDEV_TX_OK;
	}

	q_depth = tcb->q_depth;
	prod = tcb->producer_index;
	unmap_q = tcb->unmap_q;

	vectors = 1 + FUNC24(skb)->nr_frags;
	wis = FUNC4(vectors);	/* 4 vectors per work item */

	if (FUNC30(vectors > BFI_TX_MAX_VECTORS_PER_PKT)) {
		FUNC11(skb);
		FUNC0(bnad, tx_skb_max_vectors);
		return NETDEV_TX_OK;
	}

	/* Check for available TxQ resources */
	if (FUNC30(wis > FUNC1(tcb, q_depth))) {
		if ((*tcb->hw_consumer_index != tcb->consumer_index) &&
		    !FUNC28(BNAD_TXQ_FREE_SENT, &tcb->flags)) {
			u32 sent;
			sent = FUNC8(bnad, tcb);
			if (FUNC17(FUNC29(BNAD_TXQ_TX_STARTED, &tcb->flags)))
				FUNC5(tcb->i_dbell, sent);
			FUNC27();
			FUNC10(BNAD_TXQ_FREE_SENT, &tcb->flags);
		} else {
			FUNC19(netdev);
			FUNC0(bnad, netif_queue_stop);
		}

		FUNC26();
		/*
		 * Check again to deal with race condition between
		 * netif_stop_queue here, and netif_wake_queue in
		 * interrupt handler which is not inside netif tx lock.
		 */
		if (FUNC17(wis > FUNC1(tcb, q_depth))) {
			FUNC0(bnad, netif_queue_stop);
			return NETDEV_TX_BUSY;
		} else {
			FUNC20(netdev);
			FUNC0(bnad, netif_queue_wakeup);
		}
	}

	txqent = &((struct bna_txq_entry *)tcb->sw_q)[prod];
	head_unmap = &unmap_q[prod];

	/* Program the opcode, flags, frame_len, num_vectors in WI */
	if (FUNC9(bnad, tcb, skb, txqent)) {
		FUNC11(skb);
		return NETDEV_TX_OK;
	}
	txqent->hdr.wi.reserved = 0;
	txqent->hdr.wi.num_vectors = vectors;

	head_unmap->skb = skb;
	head_unmap->nvecs = 0;

	/* Program the vectors */
	unmap = head_unmap;
	dma_addr = FUNC12(&bnad->pcidev->dev, skb->data,
				  len, DMA_TO_DEVICE);
	if (FUNC13(&bnad->pcidev->dev, dma_addr)) {
		FUNC11(skb);
		FUNC0(bnad, tx_skb_map_failed);
		return NETDEV_TX_OK;
	}
	FUNC3(dma_addr, &txqent->vector[0].host_addr);
	txqent->vector[0].length = FUNC16(len);
	FUNC14(&unmap->vectors[0], dma_addr, dma_addr);
	head_unmap->nvecs++;

	for (i = 0, vect_id = 0; i < vectors - 1; i++) {
		const skb_frag_t *frag = &FUNC24(skb)->frags[i];
		u32		size = FUNC22(frag);

		if (FUNC30(size == 0)) {
			/* Undo the changes starting at tcb->producer_index */
			FUNC7(bnad, unmap_q, q_depth,
				tcb->producer_index);
			FUNC11(skb);
			FUNC0(bnad, tx_skb_frag_zero);
			return NETDEV_TX_OK;
		}

		len += size;

		vect_id++;
		if (vect_id == BFI_TX_MAX_VECTORS_PER_WI) {
			vect_id = 0;
			FUNC2(prod, q_depth);
			txqent = &((struct bna_txq_entry *)tcb->sw_q)[prod];
			txqent->hdr.wi_ext.opcode = FUNC16(BNA_TXQ_WI_EXTENSION);
			unmap = &unmap_q[prod];
		}

		dma_addr = FUNC21(&bnad->pcidev->dev, frag,
					    0, size, DMA_TO_DEVICE);
		if (FUNC13(&bnad->pcidev->dev, dma_addr)) {
			/* Undo the changes starting at tcb->producer_index */
			FUNC7(bnad, unmap_q, q_depth,
					   tcb->producer_index);
			FUNC11(skb);
			FUNC0(bnad, tx_skb_map_failed);
			return NETDEV_TX_OK;
		}

		FUNC15(&unmap->vectors[vect_id], dma_len, size);
		FUNC3(dma_addr, &txqent->vector[vect_id].host_addr);
		txqent->vector[vect_id].length = FUNC16(size);
		FUNC14(&unmap->vectors[vect_id], dma_addr,
				   dma_addr);
		head_unmap->nvecs++;
	}

	if (FUNC30(len != skb->len)) {
		/* Undo the changes starting at tcb->producer_index */
		FUNC7(bnad, unmap_q, q_depth, tcb->producer_index);
		FUNC11(skb);
		FUNC0(bnad, tx_skb_len_mismatch);
		return NETDEV_TX_OK;
	}

	FUNC2(prod, q_depth);
	tcb->producer_index = prod;

	FUNC31();

	if (FUNC30(!FUNC29(BNAD_TXQ_TX_STARTED, &tcb->flags)))
		return NETDEV_TX_OK;

	FUNC25(skb);

	FUNC6(tcb);

	return NETDEV_TX_OK;
}