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
struct sk_buff {int dummy; } ;
struct ice_rx_buf {int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 unsigned int ICE_RXBUF_2048 ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_rx_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct ice_rx_buf *rx_buf, struct sk_buff *skb,
		unsigned int size)
{
#if (PAGE_SIZE >= 8192)
	unsigned int truesize = SKB_DATA_ALIGN(size);
#else
	unsigned int truesize = ICE_RXBUF_2048;
#endif

	if (!size)
		return;
	FUNC2(skb, FUNC3(skb)->nr_frags, rx_buf->page,
			rx_buf->page_offset, size, truesize);

	/* page is being used so we must update the page offset */
	FUNC1(rx_buf, truesize);
}