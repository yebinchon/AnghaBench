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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct b43_rxhdr_fw4 {int /*<<< orphan*/  frame_len; } ;
struct b43_dmaring {scalar_t__ rx_buffersize; scalar_t__ frameoffset; TYPE_1__* dev; struct b43_dma_ops* ops; } ;
struct b43_dmadesc_meta {int /*<<< orphan*/  dmaaddr; struct sk_buff* skb; } ;
struct b43_dmadesc_generic {int dummy; } ;
struct b43_dma_ops {struct b43_dmadesc_generic* (* idx2desc ) (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;} ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct b43_dmaring*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*,struct b43_rxhdr_fw4*) ; 
 int FUNC2 (struct b43_dmaring*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct b43_dmaring*,int) ; 
 int FUNC8 (struct b43_dmaring*,struct b43_dmadesc_generic*,struct b43_dmadesc_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 struct b43_dmadesc_generic* FUNC11 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 struct b43_dmadesc_generic* FUNC12 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 int /*<<< orphan*/  FUNC13 (struct b43_dmaring*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_dmaring*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_dmaring*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(struct b43_dmaring *ring, int *slot)
{
	const struct b43_dma_ops *ops = ring->ops;
	struct b43_dmadesc_generic *desc;
	struct b43_dmadesc_meta *meta;
	struct b43_rxhdr_fw4 *rxhdr;
	struct sk_buff *skb;
	u16 len;
	int err;
	dma_addr_t dmaaddr;

	desc = ops->idx2desc(ring, *slot, &meta);

	FUNC13(ring, meta->dmaaddr, ring->rx_buffersize);
	skb = meta->skb;

	rxhdr = (struct b43_rxhdr_fw4 *)skb->data;
	len = FUNC6(rxhdr->frame_len);
	if (len == 0) {
		int i = 0;

		do {
			FUNC15(2);
			FUNC5();
			len = FUNC6(rxhdr->frame_len);
		} while (len == 0 && i++ < 5);
		if (FUNC16(len == 0)) {
			dmaaddr = meta->dmaaddr;
			goto drop_recycle_buffer;
		}
	}
	if (FUNC16(FUNC2(ring, skb))) {
		/* Something went wrong with the DMA.
		 * The device did not touch the buffer and did not overwrite the poison. */
		FUNC3(ring->dev->wl, "DMA RX: Dropping poisoned buffer.\n");
		dmaaddr = meta->dmaaddr;
		goto drop_recycle_buffer;
	}
	if (FUNC16(len + ring->frameoffset > ring->rx_buffersize)) {
		/* The data did not fit into one descriptor buffer
		 * and is split over multiple buffers.
		 * This should never happen, as we try to allocate buffers
		 * big enough. So simply ignore this packet.
		 */
		int cnt = 0;
		s32 tmp = len;

		while (1) {
			desc = ops->idx2desc(ring, *slot, &meta);
			/* recycle the descriptor buffer. */
			FUNC0(ring, meta->skb);
			FUNC14(ring, meta->dmaaddr,
						   ring->rx_buffersize);
			*slot = FUNC7(ring, *slot);
			cnt++;
			tmp -= ring->rx_buffersize;
			if (tmp <= 0)
				break;
		}
		FUNC4(ring->dev->wl, "DMA RX buffer too small "
		       "(len: %u, buffer: %u, nr-dropped: %d)\n",
		       len, ring->rx_buffersize, cnt);
		goto drop;
	}

	dmaaddr = meta->dmaaddr;
	err = FUNC8(ring, desc, meta, GFP_ATOMIC);
	if (FUNC16(err)) {
		FUNC3(ring->dev->wl, "DMA RX: setup_rx_descbuffer() failed\n");
		goto drop_recycle_buffer;
	}

	FUNC17(ring, dmaaddr, ring->rx_buffersize, 0);
	FUNC10(skb, len + ring->frameoffset);
	FUNC9(skb, ring->frameoffset);

	FUNC1(ring->dev, skb, rxhdr);
drop:
	return;

drop_recycle_buffer:
	/* Poison and recycle the RX buffer. */
	FUNC0(ring, skb);
	FUNC14(ring, dmaaddr, ring->rx_buffersize);
}