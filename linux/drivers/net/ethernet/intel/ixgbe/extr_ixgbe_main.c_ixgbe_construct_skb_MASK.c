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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
struct xdp_buff {unsigned int data_end; unsigned int data; unsigned int data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {unsigned int page_offset; int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  page; int /*<<< orphan*/  dma; } ;
struct ixgbe_ring {TYPE_1__* q_vector; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_EOP ; 
 unsigned int IXGBE_RX_HDR_SIZE ; 
 unsigned int L1_CACHE_BYTES ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 int FUNC4 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC5 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct ixgbe_ring *rx_ring,
					   struct ixgbe_rx_buffer *rx_buffer,
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
	struct sk_buff *skb;

	/* prefetch first cache line of first page */
	FUNC9(xdp->data);
#if L1_CACHE_BYTES < 128
	FUNC9(xdp->data + L1_CACHE_BYTES);
#endif
	/* Note, we get here by enabling legacy-rx via:
	 *
	 *    ethtool --set-priv-flags <dev> legacy-rx on
	 *
	 * In this mode, we currently get 0 extra XDP headroom as
	 * opposed to having legacy-rx off, where we process XDP
	 * packets going to stack via ixgbe_build_skb(). The latter
	 * provides us currently with 192 bytes of headroom.
	 *
	 * For ixgbe_construct_skb() mode it means that the
	 * xdp->data_meta will always point to xdp->data, since
	 * the helper cannot expand the head. Should this ever
	 * change in future for legacy-rx mode on, then lets also
	 * add xdp->data_meta handling here.
	 */

	/* allocate a skb to store the frags */
	skb = FUNC7(&rx_ring->q_vector->napi, IXGBE_RX_HDR_SIZE);
	if (FUNC11(!skb))
		return NULL;

	if (size > IXGBE_RX_HDR_SIZE) {
		if (!FUNC5(rx_desc, IXGBE_RXD_STAT_EOP))
			FUNC1(skb)->dma = rx_buffer->dma;

		FUNC10(skb, 0, rx_buffer->page,
				xdp->data - FUNC8(rx_buffer->page),
				size, truesize);
#if (PAGE_SIZE < 8192)
		rx_buffer->page_offset ^= truesize;
#else
		rx_buffer->page_offset += truesize;
#endif
	} else {
		FUNC6(FUNC3(skb, size),
		       xdp->data, FUNC0(size, sizeof(long)));
		rx_buffer->pagecnt_bias++;
	}

	return skb;
}