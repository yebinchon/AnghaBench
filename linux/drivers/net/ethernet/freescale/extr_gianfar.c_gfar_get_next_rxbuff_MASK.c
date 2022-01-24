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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct gfar_rx_buff {int page_offset; struct page* page; int /*<<< orphan*/  dma; } ;
struct gfar_priv_rx_q {size_t next_to_clean; int /*<<< orphan*/  dev; struct gfar_rx_buff* rx_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFAR_RXB_TRUESIZE ; 
 int /*<<< orphan*/  GFAR_SKBFRAG_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RXBUF_ALIGNMENT ; 
 struct sk_buff* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct gfar_rx_buff*,int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfar_priv_rx_q*,struct gfar_rx_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfar_priv_rx_q*) ; 
 scalar_t__ FUNC6 (int) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct gfar_priv_rx_q *rx_queue,
					    u32 lstatus, struct sk_buff *skb)
{
	struct gfar_rx_buff *rxb = &rx_queue->rx_buff[rx_queue->next_to_clean];
	struct page *page = rxb->page;
	bool first = false;

	if (FUNC6(!skb)) {
		void *buff_addr = FUNC7(page) + rxb->page_offset;

		skb = FUNC0(buff_addr, GFAR_SKBFRAG_SIZE);
		if (FUNC9(!skb)) {
			FUNC5(rx_queue);
			return NULL;
		}
		FUNC8(skb, RXBUF_ALIGNMENT);
		first = true;
	}

	FUNC1(rx_queue->dev, rxb->dma, rxb->page_offset,
				      GFAR_RXB_TRUESIZE, DMA_FROM_DEVICE);

	if (FUNC3(rxb, lstatus, skb, first)) {
		/* reuse the free half of the page */
		FUNC4(rx_queue, rxb);
	} else {
		/* page cannot be reused, unmap it */
		FUNC2(rx_queue->dev, rxb->dma,
			       PAGE_SIZE, DMA_FROM_DEVICE);
	}

	/* clear rxb content */
	rxb->page = NULL;

	return skb;
}