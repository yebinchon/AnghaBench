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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct xdp_buff {unsigned int data; unsigned int data_meta; int data_end; int data_hard_start; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {unsigned int page_offset; int /*<<< orphan*/  dma; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_EOP ; 
 unsigned int L1_CACHE_BYTES ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC3 (int,unsigned int) ; 
 int FUNC4 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC5 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct ixgbe_ring *rx_ring,
				       struct ixgbe_rx_buffer *rx_buffer,
				       struct xdp_buff *xdp,
				       union ixgbe_adv_rx_desc *rx_desc)
{
	unsigned int metasize = xdp->data - xdp->data_meta;
#if (PAGE_SIZE < 8192)
	unsigned int truesize = FUNC4(rx_ring) / 2;
#else
	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
				SKB_DATA_ALIGN(xdp->data_end -
					       xdp->data_hard_start);
#endif
	struct sk_buff *skb;

	/* Prefetch first cache line of first page. If xdp->data_meta
	 * is unused, this points extactly as xdp->data, otherwise we
	 * likely have a consumer accessing first few bytes of meta
	 * data, and then actual data.
	 */
	FUNC6(xdp->data_meta);
#if L1_CACHE_BYTES < 128
	FUNC6(xdp->data_meta + L1_CACHE_BYTES);
#endif

	/* build an skb to around the page buffer */
	skb = FUNC3(xdp->data_hard_start, truesize);
	if (FUNC9(!skb))
		return NULL;

	/* update pointers within the skb to store the data */
	FUNC8(skb, xdp->data - xdp->data_hard_start);
	FUNC2(skb, xdp->data_end - xdp->data);
	if (metasize)
		FUNC7(skb, metasize);

	/* record DMA address if this is the start of a chain of buffers */
	if (!FUNC5(rx_desc, IXGBE_RXD_STAT_EOP))
		FUNC0(skb)->dma = rx_buffer->dma;

	/* update buffer offset */
#if (PAGE_SIZE < 8192)
	rx_buffer->page_offset ^= truesize;
#else
	rx_buffer->page_offset += truesize;
#endif

	return skb;
}