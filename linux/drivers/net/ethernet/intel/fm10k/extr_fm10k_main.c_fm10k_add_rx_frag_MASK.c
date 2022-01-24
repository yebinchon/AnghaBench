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
typedef  union fm10k_rx_desc {int dummy; } fm10k_rx_desc ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct fm10k_rx_buffer {int page_offset; struct page* page; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int FM10K_RX_BUFSZ ; 
 unsigned int FM10K_RX_HDR_LEN ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int FUNC4 (struct fm10k_rx_buffer*,struct page*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 unsigned char* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,unsigned long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13(struct fm10k_rx_buffer *rx_buffer,
			      unsigned int size,
			      union fm10k_rx_desc *rx_desc,
			      struct sk_buff *skb)
{
	struct page *page = rx_buffer->page;
	unsigned char *va = FUNC8(page) + rx_buffer->page_offset;
#if (PAGE_SIZE < 8192)
	unsigned int truesize = FM10K_RX_BUFSZ;
#else
	unsigned int truesize = ALIGN(size, 512);
#endif
	unsigned int pull_len;

	if (FUNC12(FUNC10(skb)))
		goto add_tail_frag;

	if (FUNC6(size <= FM10K_RX_HDR_LEN)) {
		FUNC7(FUNC2(skb, size), va, FUNC0(size, sizeof(long)));

		/* page is not reserved, we can reuse buffer as-is */
		if (FUNC6(!FUNC5(page)))
			return true;

		/* this page cannot be reused so discard it */
		FUNC1(page);
		return false;
	}

	/* we need the header to contain the greater of either ETH_HLEN or
	 * 60 bytes if the skb->len is less than 60 for skb_pad.
	 */
	pull_len = FUNC3(skb->dev, va, FM10K_RX_HDR_LEN);

	/* align pull length to size of long to optimize memcpy performance */
	FUNC7(FUNC2(skb, pull_len), va, FUNC0(pull_len, sizeof(long)));

	/* update all of the pointers */
	va += pull_len;
	size -= pull_len;

add_tail_frag:
	FUNC9(skb, FUNC11(skb)->nr_frags, page,
			(unsigned long)va & ~PAGE_MASK, size, truesize);

	return FUNC4(rx_buffer, page, truesize);
}