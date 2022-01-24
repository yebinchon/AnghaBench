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
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
union fm10k_rx_desc {TYPE_1__ w; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {struct page* data; } ;
struct page {int dummy; } ;
struct fm10k_rx_buffer {int page_offset; struct page* page; int /*<<< orphan*/  dma; } ;
struct TYPE_6__ {int /*<<< orphan*/  alloc_failed; } ;
struct fm10k_ring {size_t next_to_clean; int /*<<< orphan*/  dev; TYPE_3__ rx_stats; TYPE_2__* q_vector; struct fm10k_rx_buffer* rx_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FM10K_RX_HDR_LEN ; 
 int L1_CACHE_BYTES ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fm10k_rx_buffer*,unsigned int,union fm10k_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_ring*,struct fm10k_rx_buffer*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct fm10k_ring *rx_ring,
					     union fm10k_rx_desc *rx_desc,
					     struct sk_buff *skb)
{
	unsigned int size = FUNC4(rx_desc->w.length);
	struct fm10k_rx_buffer *rx_buffer;
	struct page *page;

	rx_buffer = &rx_ring->rx_buffer[rx_ring->next_to_clean];
	page = rx_buffer->page;
	FUNC9(page);

	if (FUNC5(!skb)) {
		void *page_addr = FUNC7(page) +
				  rx_buffer->page_offset;

		/* prefetch first cache line of first page */
		FUNC8(page_addr);
#if L1_CACHE_BYTES < 128
		FUNC8((void *)((u8 *)page_addr + L1_CACHE_BYTES));
#endif

		/* allocate a skb to store the frags */
		skb = FUNC6(&rx_ring->q_vector->napi,
				     FM10K_RX_HDR_LEN);
		if (FUNC10(!skb)) {
			rx_ring->rx_stats.alloc_failed++;
			return NULL;
		}

		/* we will be copying header into skb->data in
		 * pskb_may_pull so it is in our interest to prefetch
		 * it now to avoid a possible cache miss
		 */
		FUNC9(skb->data);
	}

	/* we are reusing so sync this buffer for CPU use */
	FUNC0(rx_ring->dev,
				      rx_buffer->dma,
				      rx_buffer->page_offset,
				      size,
				      DMA_FROM_DEVICE);

	/* pull page into skb */
	if (FUNC2(rx_buffer, size, rx_desc, skb)) {
		/* hand second half of page back to the ring */
		FUNC3(rx_ring, rx_buffer);
	} else {
		/* we are not reusing the buffer so unmap it */
		FUNC1(rx_ring->dev, rx_buffer->dma,
			       PAGE_SIZE, DMA_FROM_DEVICE);
	}

	/* clear contents of rx_buffer */
	rx_buffer->page = NULL;

	return skb;
}