#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct TYPE_7__ {unsigned int produce_idx; unsigned int count; } ;
struct emac_tx_queue {TYPE_3__ tpd; } ;
struct emac_tpd {int dummy; } ;
struct emac_buffer {unsigned int length; void* dma_addr; struct sk_buff* skb; } ;
struct emac_adapter {TYPE_2__* netdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_8__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct emac_buffer* FUNC0 (struct emac_tx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_tpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_tpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_tpd*,unsigned int) ; 
 scalar_t__ FUNC4 (struct emac_tpd*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct emac_adapter*,struct emac_tx_queue*,struct emac_tpd*) ; 
 int /*<<< orphan*/  FUNC10 (struct emac_adapter*,struct emac_tx_queue*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC15 (struct sk_buff*) ; 
 TYPE_4__* FUNC16 (struct sk_buff*) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 unsigned int FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static void FUNC22(struct emac_adapter *adpt,
			     struct emac_tx_queue *tx_q, struct sk_buff *skb,
			     struct emac_tpd *tpd)
{
	unsigned int nr_frags = FUNC16(skb)->nr_frags;
	unsigned int first = tx_q->tpd.produce_idx;
	unsigned int len = FUNC15(skb);
	struct emac_buffer *tpbuf = NULL;
	unsigned int mapped_len = 0;
	unsigned int i;
	int count = 0;
	int ret;

	/* if Large Segment Offload is (in TCP Segmentation Offload struct) */
	if (FUNC4(tpd)) {
		mapped_len = FUNC17(skb) + FUNC18(skb);

		tpbuf = FUNC0(tx_q, tx_q->tpd.produce_idx);
		tpbuf->length = mapped_len;
		tpbuf->dma_addr = FUNC6(adpt->netdev->dev.parent,
					       FUNC20(skb->data),
					       FUNC12(skb->data),
					       tpbuf->length,
					       DMA_TO_DEVICE);
		ret = FUNC7(adpt->netdev->dev.parent,
					tpbuf->dma_addr);
		if (ret)
			goto error;

		FUNC2(tpd, FUNC11(tpbuf->dma_addr));
		FUNC1(tpd, FUNC19(tpbuf->dma_addr));
		FUNC3(tpd, tpbuf->length);
		FUNC9(adpt, tx_q, tpd);
		count++;
	}

	if (mapped_len < len) {
		tpbuf = FUNC0(tx_q, tx_q->tpd.produce_idx);
		tpbuf->length = len - mapped_len;
		tpbuf->dma_addr = FUNC6(adpt->netdev->dev.parent,
					       FUNC20(skb->data +
							    mapped_len),
					       FUNC12(skb->data +
							      mapped_len),
					       tpbuf->length, DMA_TO_DEVICE);
		ret = FUNC7(adpt->netdev->dev.parent,
					tpbuf->dma_addr);
		if (ret)
			goto error;

		FUNC2(tpd, FUNC11(tpbuf->dma_addr));
		FUNC1(tpd, FUNC19(tpbuf->dma_addr));
		FUNC3(tpd, tpbuf->length);
		FUNC9(adpt, tx_q, tpd);
		count++;
	}

	for (i = 0; i < nr_frags; i++) {
		skb_frag_t *frag = &FUNC16(skb)->frags[i];

		tpbuf = FUNC0(tx_q, tx_q->tpd.produce_idx);
		tpbuf->length = FUNC14(frag);
		tpbuf->dma_addr = FUNC13(adpt->netdev->dev.parent,
						   frag, 0, tpbuf->length,
						   DMA_TO_DEVICE);
		ret = FUNC7(adpt->netdev->dev.parent,
					tpbuf->dma_addr);
		if (ret)
			goto error;

		FUNC2(tpd, FUNC11(tpbuf->dma_addr));
		FUNC1(tpd, FUNC19(tpbuf->dma_addr));
		FUNC3(tpd, tpbuf->length);
		FUNC9(adpt, tx_q, tpd);
		count++;
	}

	/* The last tpd */
	FUNC21();
	FUNC10(adpt, tx_q);

	/* The last buffer info contain the skb address,
	 * so it will be freed after unmap
	 */
	tpbuf->skb = skb;

	return;

error:
	/* One of the memory mappings failed, so undo everything */
	tx_q->tpd.produce_idx = first;

	while (count--) {
		tpbuf = FUNC0(tx_q, first);
		FUNC8(adpt->netdev->dev.parent, tpbuf->dma_addr,
			       tpbuf->length, DMA_TO_DEVICE);
		tpbuf->dma_addr = 0;
		tpbuf->length = 0;

		if (++first == tx_q->tpd.count)
			first = 0;
	}

	FUNC5(skb);
}