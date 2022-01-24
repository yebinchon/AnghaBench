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
struct page {int dummy; } ;
struct netfront_queue {int* grant_rx_ref; int /*<<< orphan*/  rx_lock; struct sk_buff** rx_skbs; } ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int GRANT_INVALID_REF ; 
 int NET_RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct netfront_queue *queue)
{
	int id, ref;

	FUNC6(&queue->rx_lock);

	for (id = 0; id < NET_RX_RING_SIZE; id++) {
		struct sk_buff *skb;
		struct page *page;

		skb = queue->rx_skbs[id];
		if (!skb)
			continue;

		ref = queue->grant_rx_ref[id];
		if (ref == GRANT_INVALID_REF)
			continue;

		page = FUNC4(&FUNC5(skb)->frags[0]);

		/* gnttab_end_foreign_access() needs a page ref until
		 * foreign access is ended (which may be deferred).
		 */
		FUNC0(page);
		FUNC1(ref, 0,
					  (unsigned long)FUNC3(page));
		queue->grant_rx_ref[id] = GRANT_INVALID_REF;

		FUNC2(skb);
	}

	FUNC7(&queue->rx_lock);
}