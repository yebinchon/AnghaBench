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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct xdp_buff {unsigned int data; unsigned int data_meta; int data_end; int data_hard_start; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbevf_rx_buffer {unsigned int page_offset; } ;
struct ixgbevf_ring {int dummy; } ;

/* Variables and functions */
 unsigned int L1_CACHE_BYTES ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC2 (int,unsigned int) ; 
 int FUNC3 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct ixgbevf_ring *rx_ring,
					 struct ixgbevf_rx_buffer *rx_buffer,
					 struct xdp_buff *xdp,
					 union ixgbe_adv_rx_desc *rx_desc)
{
	unsigned int metasize = xdp->data - xdp->data_meta;
#if (PAGE_SIZE < 8192)
	unsigned int truesize = FUNC3(rx_ring) / 2;
#else
	unsigned int truesize = SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) +
				SKB_DATA_ALIGN(xdp->data_end -
					       xdp->data_hard_start);
#endif
	struct sk_buff *skb;

	/* Prefetch first cache line of first page. If xdp->data_meta
	 * is unused, this points to xdp->data, otherwise, we likely
	 * have a consumer accessing first few bytes of meta data,
	 * and then actual data.
	 */
	FUNC4(xdp->data_meta);
#if L1_CACHE_BYTES < 128
	FUNC4(xdp->data_meta + L1_CACHE_BYTES);
#endif

	/* build an skb around the page buffer */
	skb = FUNC2(xdp->data_hard_start, truesize);
	if (FUNC7(!skb))
		return NULL;

	/* update pointers within the skb to store the data */
	FUNC6(skb, xdp->data - xdp->data_hard_start);
	FUNC1(skb, xdp->data_end - xdp->data);
	if (metasize)
		FUNC5(skb, metasize);

	/* update buffer offset */
#if (PAGE_SIZE < 8192)
	rx_buffer->page_offset ^= truesize;
#else
	rx_buffer->page_offset += truesize;
#endif

	return skb;
}