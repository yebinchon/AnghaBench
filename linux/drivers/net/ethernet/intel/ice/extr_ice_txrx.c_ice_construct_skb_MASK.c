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
typedef  void u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct ice_rx_buf {int page_offset; int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  page; } ;
struct ice_ring {int /*<<< orphan*/  q_index; TYPE_1__* q_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int GFP_ATOMIC ; 
 unsigned int ICE_RXBUF_2048 ; 
 unsigned int ICE_RX_HDR_SIZE ; 
 int L1_CACHE_BYTES ; 
 unsigned int FUNC1 (unsigned int) ; 
 int __GFP_NOWARN ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_rx_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC12(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
		  unsigned int size)
{
	void *va = FUNC7(rx_buf->page) + rx_buf->page_offset;
	unsigned int headlen;
	struct sk_buff *skb;

	/* prefetch first cache line of first page */
	FUNC8(va);
#if L1_CACHE_BYTES < 128
	FUNC8((u8 *)va + L1_CACHE_BYTES);
#endif /* L1_CACHE_BYTES */

	/* allocate a skb to store the frags */
	skb = FUNC2(&rx_ring->q_vector->napi, ICE_RX_HDR_SIZE,
			       GFP_ATOMIC | __GFP_NOWARN);
	if (FUNC11(!skb))
		return NULL;

	FUNC10(skb, rx_ring->q_index);
	/* Determine available headroom for copy */
	headlen = size;
	if (headlen > ICE_RX_HDR_SIZE)
		headlen = FUNC4(skb->dev, va, ICE_RX_HDR_SIZE);

	/* align pull length to size of long to optimize memcpy performance */
	FUNC6(FUNC3(skb, headlen), va, FUNC0(headlen, sizeof(long)));

	/* if we exhaust the linear part then add what is left as a frag */
	size -= headlen;
	if (size) {
#if (PAGE_SIZE >= 8192)
		unsigned int truesize = SKB_DATA_ALIGN(size);
#else
		unsigned int truesize = ICE_RXBUF_2048;
#endif
		FUNC9(skb, 0, rx_buf->page,
				rx_buf->page_offset + headlen, size, truesize);
		/* buffer is used by skb, update page_offset */
		FUNC5(rx_buf, truesize);
	} else {
		/* buffer is unused, reset bias back to rx_buf; data was copied
		 * onto skb's linear part so there's no need for adjusting
		 * page offset and we can reuse this buffer as-is
		 */
		rx_buf->pagecnt_bias++;
	}

	return skb;
}