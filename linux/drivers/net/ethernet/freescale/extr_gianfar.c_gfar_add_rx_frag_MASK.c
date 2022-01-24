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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; } ;
struct page {int dummy; } ;
struct gfar_rx_buff {scalar_t__ page_offset; struct page* page; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int BD_LENGTH_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GFAR_RXB_TRUESIZE ; 
 int /*<<< orphan*/  RXBD_LAST ; 
 scalar_t__ RXBUF_ALIGNMENT ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static bool FUNC9(struct gfar_rx_buff *rxb, u32 lstatus,
			     struct sk_buff *skb, bool first)
{
	int size = lstatus & BD_LENGTH_MASK;
	struct page *page = rxb->page;

	if (FUNC1(first)) {
		FUNC6(skb, size);
	} else {
		/* the last fragments' length contains the full frame length */
		if (lstatus & FUNC0(RXBD_LAST))
			size -= skb->len;

		FUNC5(skb, FUNC7(skb)->nr_frags, page,
				rxb->page_offset + RXBUF_ALIGNMENT,
				size, GFAR_RXB_TRUESIZE);
	}

	/* try reuse page */
	if (FUNC8(FUNC2(page) != 1 || FUNC3(page)))
		return false;

	/* change offset to the other half */
	rxb->page_offset ^= GFAR_RXB_TRUESIZE;

	FUNC4(page);

	return true;
}