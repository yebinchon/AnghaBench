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
struct xdp_buff {unsigned int data_end; unsigned int data; unsigned int data_hard_start; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct ixgbevf_rx_buffer {unsigned int page_offset; int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  page; } ;
struct ixgbevf_ring {TYPE_1__* q_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 unsigned int IXGBEVF_RX_HDR_SIZE ; 
 unsigned int L1_CACHE_BYTES ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC4 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static
struct sk_buff *FUNC11(struct ixgbevf_ring *rx_ring,
				      struct ixgbevf_rx_buffer *rx_buffer,
				      struct xdp_buff *xdp,
				      union ixgbe_adv_rx_desc *rx_desc)
{
	unsigned int size = xdp->data_end - xdp->data;
#if (PAGE_SIZE < 8192)
	unsigned int truesize = FUNC4(rx_ring) / 2;
#else
	unsigned int truesize = SKB_DATA_ALIGN(xdp->data_end -
					       xdp->data_hard_start);
#endif
	unsigned int headlen;
	struct sk_buff *skb;

	/* prefetch first cache line of first page */
	FUNC8(xdp->data);
#if L1_CACHE_BYTES < 128
	FUNC8(xdp->data + L1_CACHE_BYTES);
#endif
	/* Note, we get here by enabling legacy-rx via:
	 *
	 *    ethtool --set-priv-flags <dev> legacy-rx on
	 *
	 * In this mode, we currently get 0 extra XDP headroom as
	 * opposed to having legacy-rx off, where we process XDP
	 * packets going to stack via ixgbevf_build_skb().
	 *
	 * For ixgbevf_construct_skb() mode it means that the
	 * xdp->data_meta will always point to xdp->data, since
	 * the helper cannot expand the head. Should this ever
	 * changed in future for legacy-rx mode on, then lets also
	 * add xdp->data_meta handling here.
	 */

	/* allocate a skb to store the frags */
	skb = FUNC6(&rx_ring->q_vector->napi, IXGBEVF_RX_HDR_SIZE);
	if (FUNC10(!skb))
		return NULL;

	/* Determine available headroom for copy */
	headlen = size;
	if (headlen > IXGBEVF_RX_HDR_SIZE)
		headlen = FUNC3(skb->dev, xdp->data,
					  IXGBEVF_RX_HDR_SIZE);

	/* align pull length to size of long to optimize memcpy performance */
	FUNC5(FUNC2(skb, headlen), xdp->data,
	       FUNC0(headlen, sizeof(long)));

	/* update all of the pointers */
	size -= headlen;
	if (size) {
		FUNC9(skb, 0, rx_buffer->page,
				(xdp->data + headlen) -
					FUNC7(rx_buffer->page),
				size, truesize);
#if (PAGE_SIZE < 8192)
		rx_buffer->page_offset ^= truesize;
#else
		rx_buffer->page_offset += truesize;
#endif
	} else {
		rx_buffer->pagecnt_bias++;
	}

	return skb;
}