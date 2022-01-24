#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef  size_t uint ;
typedef  size_t u32 ;
struct wil_ring_tx_data {scalar_t__ last_idle; int /*<<< orphan*/  idle; int /*<<< orphan*/  enabled; } ;
struct wil_ring {size_t swhead; size_t size; TYPE_3__* va; struct wil_ctx* ctx; int /*<<< orphan*/  hwtail; } ;
struct wil_ctx {int nr_frags; int /*<<< orphan*/  skb; int /*<<< orphan*/  mapped_as; } ;
struct wil6210_vif {int bcast_ring; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* tx_desc_unmap ) (struct device*,union wil_tx_desc*,struct wil_ctx*) ;int /*<<< orphan*/  (* tx_desc_map ) (union wil_tx_desc*,int /*<<< orphan*/ ,int,int) ;} ;
struct wil6210_priv {TYPE_4__ txrx_ops; scalar_t__ tx_latency; int /*<<< orphan*/  ring_idle_trsh; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct TYPE_11__ {int d0; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int* d; } ;
typedef  struct vring_tx_desc {TYPE_5__ dma; TYPE_1__ mac; } volatile vring_tx_desc ;
struct sk_buff {int len; void const* data; struct wil_ctx* cb; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_12__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_8__ {struct vring_tx_desc volatile legacy; } ;
struct TYPE_9__ {TYPE_2__ tx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS ; 
 int /*<<< orphan*/  DMA_CFG_DESC_TX_0_CMD_EOP_POS ; 
 int /*<<< orphan*/  DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MAC_CFG_DESC_TX_0_MCS_EN_POS ; 
 int MAC_CFG_DESC_TX_0_MCS_INDEX_POS ; 
 int /*<<< orphan*/  TX_DMA_STATUS_DU ; 
 size_t WIL_BCAST_MCS0_LIMIT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct wil_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_6__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (union wil_tx_desc*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (union wil_tx_desc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,union wil_tx_desc*,struct wil_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (int,size_t,int,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct wil6210_priv*,char*,int,size_t,...) ; 
 int /*<<< orphan*/  FUNC17 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct wil6210_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int,int,void const*,int,int) ; 
 int /*<<< orphan*/  wil_mapped_as_page ; 
 int /*<<< orphan*/  wil_mapped_as_single ; 
 int /*<<< orphan*/  FUNC20 (struct wil_ring*,int) ; 
 int FUNC21 (struct wil_ring*) ; 
 int FUNC22 (struct wil_ring*) ; 
 struct device* FUNC23 (struct wil6210_priv*) ; 
 int FUNC24 (struct vring_tx_desc volatile*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct vring_tx_desc volatile*,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC27 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 

__attribute__((used)) static int FUNC29(struct wil6210_priv *wil, struct wil6210_vif *vif,
			 struct wil_ring *ring, struct sk_buff *skb)
{
	struct device *dev = FUNC23(wil);
	struct vring_tx_desc dd, *d = &dd;
	volatile struct vring_tx_desc *_d;
	u32 swhead = ring->swhead;
	int avail = FUNC21(ring);
	int nr_frags = FUNC10(skb)->nr_frags;
	uint f = 0;
	int ring_index = ring - wil->ring_tx;
	struct wil_ring_tx_data  *txdata = &wil->ring_tx_data[ring_index];
	uint i = swhead;
	dma_addr_t pa;
	int used;
	bool mcast = (ring_index == vif->bcast_ring);
	uint len = FUNC9(skb);

	FUNC16(wil, "tx_ring: %d bytes to ring %d, nr_frags %d\n",
		     skb->len, ring_index, nr_frags);

	if (FUNC15(!txdata->enabled))
		return -EINVAL;

	if (FUNC15(avail < 1 + nr_frags)) {
		FUNC18(wil,
				    "Tx ring[%2d] full. No space for %d fragments\n",
				    ring_index, 1 + nr_frags);
		return -ENOMEM;
	}
	_d = &ring->va[i].tx.legacy;

	pa = FUNC1(dev, skb->data, FUNC9(skb), DMA_TO_DEVICE);

	FUNC16(wil, "Tx[%2d] skb %d bytes 0x%p -> %pad\n", ring_index,
		     FUNC9(skb), skb->data, &pa);
	FUNC19("Tx ", DUMP_PREFIX_OFFSET, 16, 1,
			  skb->data, FUNC9(skb), false);

	if (FUNC15(FUNC2(dev, pa)))
		return -EINVAL;
	ring->ctx[i].mapped_as = wil_mapped_as_single;
	/* 1-st segment */
	wil->txrx_ops.tx_desc_map((union wil_tx_desc *)d, pa, len,
				   ring_index);
	if (FUNC15(mcast)) {
		d->mac.d[0] |= FUNC0(MAC_CFG_DESC_TX_0_MCS_EN_POS); /* MCS 0 */
		if (FUNC15(len > WIL_BCAST_MCS0_LIMIT)) /* set MCS 1 */
			d->mac.d[0] |= (1 << MAC_CFG_DESC_TX_0_MCS_INDEX_POS);
	}
	/* Process TCP/UDP checksum offloading */
	if (FUNC15(FUNC24(d, skb))) {
		FUNC17(wil, "Tx[%2d] Failed to set cksum, drop packet\n",
			ring_index);
		goto dma_error;
	}

	ring->ctx[i].nr_frags = nr_frags;
	FUNC25(d, nr_frags + 1);

	/* middle segments */
	for (; f < nr_frags; f++) {
		const skb_frag_t *frag = &FUNC10(skb)->frags[f];
		int len = FUNC7(frag);

		*_d = *d;
		FUNC16(wil, "Tx[%2d] desc[%4d]\n", ring_index, i);
		FUNC19("TxD ", DUMP_PREFIX_NONE, 32, 4,
				  (const void *)d, sizeof(*d), false);
		i = (swhead + f + 1) % ring->size;
		_d = &ring->va[i].tx.legacy;
		pa = FUNC6(dev, frag, 0, FUNC7(frag),
				      DMA_TO_DEVICE);
		if (FUNC15(FUNC2(dev, pa))) {
			FUNC17(wil, "Tx[%2d] failed to map fragment\n",
				ring_index);
			goto dma_error;
		}
		ring->ctx[i].mapped_as = wil_mapped_as_page;
		wil->txrx_ops.tx_desc_map((union wil_tx_desc *)d,
					   pa, len, ring_index);
		/* no need to check return code -
		 * if it succeeded for 1-st descriptor,
		 * it will succeed here too
		 */
		FUNC24(d, skb);
	}
	/* for the last seg only */
	d->dma.d0 |= FUNC0(DMA_CFG_DESC_TX_0_CMD_EOP_POS);
	d->dma.d0 |= FUNC0(DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS);
	d->dma.d0 |= FUNC0(DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS);
	*_d = *d;
	FUNC16(wil, "Tx[%2d] desc[%4d]\n", ring_index, i);
	FUNC19("TxD ", DUMP_PREFIX_NONE, 32, 4,
			  (const void *)d, sizeof(*d), false);

	/* hold reference to skb
	 * to prevent skb release before accounting
	 * in case of immediate "tx done"
	 */
	ring->ctx[i].skb = FUNC8(skb);

	/* performance monitoring */
	used = FUNC22(ring);
	if (FUNC26(wil->ring_idle_trsh,
			     used, used + nr_frags + 1)) {
		txdata->idle += FUNC3() - txdata->last_idle;
		FUNC16(wil,  "Ring[%2d] not idle %d -> %d\n",
			     ring_index, used, used + nr_frags + 1);
	}

	/* Make sure to advance the head only after descriptor update is done.
	 * This will prevent a race condition where the completion thread
	 * will see the DU bit set from previous run and will handle the
	 * skb before it was completed.
	 */
	FUNC28();

	/* advance swhead */
	FUNC20(ring, nr_frags + 1);
	FUNC16(wil, "Tx[%2d] swhead %d -> %d\n", ring_index, swhead,
		     ring->swhead);
	FUNC14(ring_index, swhead, skb->len, nr_frags);

	/* make sure all writes to descriptors (shared memory) are done before
	 * committing them to HW
	 */
	FUNC28();

	if (wil->tx_latency)
		*(ktime_t *)&skb->cb = FUNC4();
	else
		FUNC5(skb->cb, 0, sizeof(ktime_t));

	FUNC27(wil, ring->hwtail, ring->swhead);

	return 0;
 dma_error:
	/* unmap what we have mapped */
	nr_frags = f + 1; /* frags mapped + one for skb head */
	for (f = 0; f < nr_frags; f++) {
		struct wil_ctx *ctx;

		i = (swhead + f) % ring->size;
		ctx = &ring->ctx[i];
		_d = &ring->va[i].tx.legacy;
		*d = *_d;
		_d->dma.status = TX_DMA_STATUS_DU;
		wil->txrx_ops.tx_desc_unmap(dev,
					    (union wil_tx_desc *)d,
					    ctx);

		FUNC5(ctx, 0, sizeof(*ctx));
	}

	return -EINVAL;
}