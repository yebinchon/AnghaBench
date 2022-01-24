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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int data; unsigned int data_len; unsigned int tail; } ;
struct page {int dummy; } ;
struct bnxt_rx_ring_info {TYPE_2__* bnapi; int /*<<< orphan*/  rx_prod; } ;
struct bnxt {int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_dir; TYPE_1__* pdev; scalar_t__ rx_dma_offset; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  napi; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_WEAK_ORDERING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (struct bnxt*,struct bnxt_rx_ring_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_rx_ring_info*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct bnxt *bp,
					struct bnxt_rx_ring_info *rxr,
					u16 cons, void *data, u8 *data_ptr,
					dma_addr_t dma_addr,
					unsigned int offset_and_len)
{
	unsigned int payload = offset_and_len >> 16;
	unsigned int len = offset_and_len & 0xffff;
	skb_frag_t *frag;
	struct page *page = data;
	u16 prod = rxr->rx_prod;
	struct sk_buff *skb;
	int off, err;

	err = FUNC1(bp, rxr, prod, GFP_ATOMIC);
	if (FUNC12(err)) {
		FUNC2(rxr, cons, data);
		return NULL;
	}
	dma_addr -= bp->rx_dma_offset;
	FUNC3(&bp->pdev->dev, dma_addr, PAGE_SIZE, bp->rx_dir,
			     DMA_ATTR_WEAK_ORDERING);

	if (FUNC12(!payload))
		payload = FUNC4(bp->dev, data_ptr, len);

	skb = FUNC6(&rxr->bnapi->napi, payload);
	if (!skb) {
		FUNC0(page);
		return NULL;
	}

	off = (void *)data_ptr - FUNC7(page);
	FUNC8(skb, 0, page, off, len, PAGE_SIZE);
	FUNC5(skb->data - NET_IP_ALIGN, data_ptr - NET_IP_ALIGN,
	       payload + NET_IP_ALIGN);

	frag = &FUNC11(skb)->frags[0];
	FUNC10(frag, payload);
	FUNC9(frag, payload);
	skb->data_len -= payload;
	skb->tail += payload;

	return skb;
}