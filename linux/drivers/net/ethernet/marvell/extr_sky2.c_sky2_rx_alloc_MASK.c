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
struct sky2_port {int rx_nfrags; TYPE_1__* hw; scalar_t__ rx_data_size; int /*<<< orphan*/  netdev; } ;
struct sk_buff {int data; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned char* NET_IP_ALIGN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned char* FUNC0 (int,int) ; 
 int SKY2_HW_RAM_BUFFER ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sky2_port *sky2, gfp_t gfp)
{
	struct sk_buff *skb;
	int i;

	skb = FUNC1(sky2->netdev,
				 sky2->rx_data_size + FUNC6(sky2->hw),
				 gfp);
	if (!skb)
		goto nomem;

	if (sky2->hw->flags & SKY2_HW_RAM_BUFFER) {
		unsigned char *start;
		/*
		 * Workaround for a bug in FIFO that cause hang
		 * if the FIFO if the receive buffer is not 64 byte aligned.
		 * The buffer returned from netdev_alloc_skb is
		 * aligned except if slab debugging is enabled.
		 */
		start = FUNC0(skb->data, 8);
		FUNC5(skb, start - skb->data);
	} else
		FUNC5(skb, NET_IP_ALIGN);

	for (i = 0; i < sky2->rx_nfrags; i++) {
		struct page *page = FUNC2(gfp);

		if (!page)
			goto free_partial;
		FUNC4(skb, i, page, 0, PAGE_SIZE);
	}

	return skb;
free_partial:
	FUNC3(skb);
nomem:
	return NULL;
}