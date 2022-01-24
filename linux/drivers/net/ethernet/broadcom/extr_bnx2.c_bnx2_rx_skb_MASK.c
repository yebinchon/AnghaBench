#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {unsigned int len; unsigned int tail; unsigned int data_len; int /*<<< orphan*/  truesize; } ;
struct bnx2_sw_pg {int /*<<< orphan*/ * page; } ;
struct bnx2_rx_ring_info {size_t rx_pg_cons; size_t rx_pg_prod; struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2 {TYPE_1__* pdev; int /*<<< orphan*/  rx_buf_use_size; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 scalar_t__ BNX2_RX_OFFSET ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC2 (unsigned int) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int FUNC3 (struct bnx2*,struct bnx2_rx_ring_info*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnx2*,struct bnx2_rx_ring_info*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2*,struct bnx2_rx_ring_info*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2*,struct bnx2_rx_ring_info*,struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2_sw_pg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mapping ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC20(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u8 *data,
	    unsigned int len, unsigned int hdr_len, dma_addr_t dma_addr,
	    u32 ring_idx)
{
	int err;
	u16 prod = ring_idx & 0xffff;
	struct sk_buff *skb;

	err = FUNC3(bp, rxr, prod, GFP_ATOMIC);
	if (FUNC19(err)) {
		FUNC5(bp, rxr, data, (u16) (ring_idx >> 16), prod);
error:
		if (hdr_len) {
			unsigned int raw_len = len + 4;
			int pages = FUNC2(raw_len - hdr_len) >> PAGE_SHIFT;

			FUNC6(bp, rxr, NULL, pages);
		}
		return NULL;
	}

	FUNC10(&bp->pdev->dev, dma_addr, bp->rx_buf_use_size,
			 PCI_DMA_FROMDEVICE);
	skb = FUNC7(data, 0);
	if (!skb) {
		FUNC12(data);
		goto error;
	}
	FUNC17(skb, ((u8 *)FUNC11(data) - data) + BNX2_RX_OFFSET);
	if (hdr_len == 0) {
		FUNC16(skb, len);
		return skb;
	} else {
		unsigned int i, frag_len, frag_size, pages;
		struct bnx2_sw_pg *rx_pg;
		u16 pg_cons = rxr->rx_pg_cons;
		u16 pg_prod = rxr->rx_pg_prod;

		frag_size = len + 4 - hdr_len;
		pages = FUNC2(frag_size) >> PAGE_SHIFT;
		FUNC16(skb, hdr_len);

		for (i = 0; i < pages; i++) {
			dma_addr_t mapping_old;

			frag_len = FUNC13(frag_size, (unsigned int) PAGE_SIZE);
			if (FUNC19(frag_len <= 4)) {
				unsigned int tail = 4 - frag_len;

				rxr->rx_pg_cons = pg_cons;
				rxr->rx_pg_prod = pg_prod;
				FUNC6(bp, rxr, NULL,
							pages - i);
				skb->len -= tail;
				if (i == 0) {
					skb->tail -= tail;
				} else {
					skb_frag_t *frag =
						&FUNC18(skb)->frags[i - 1];
					FUNC15(frag, tail);
					skb->data_len -= tail;
				}
				return skb;
			}
			rx_pg = &rxr->rx_pg_ring[pg_cons];

			/* Don't unmap yet.  If we're unable to allocate a new
			 * page, we need to recycle the page and the DMA addr.
			 */
			mapping_old = FUNC8(rx_pg, mapping);
			if (i == pages - 1)
				frag_len -= 4;

			FUNC14(skb, i, rx_pg->page, 0, frag_len);
			rx_pg->page = NULL;

			err = FUNC4(bp, rxr,
						 FUNC1(pg_prod),
						 GFP_ATOMIC);
			if (FUNC19(err)) {
				rxr->rx_pg_cons = pg_cons;
				rxr->rx_pg_prod = pg_prod;
				FUNC6(bp, rxr, skb,
							pages - i);
				return NULL;
			}

			FUNC9(&bp->pdev->dev, mapping_old,
				       PAGE_SIZE, PCI_DMA_FROMDEVICE);

			frag_size -= frag_len;
			skb->data_len += frag_len;
			skb->truesize += PAGE_SIZE;
			skb->len += frag_len;

			pg_prod = FUNC0(pg_prod);
			pg_cons = FUNC1(FUNC0(pg_cons));
		}
		rxr->rx_pg_prod = pg_prod;
		rxr->rx_pg_cons = pg_cons;
	}
	return skb;
}