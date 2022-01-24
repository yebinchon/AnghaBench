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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct netfront_queue {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ RX_COPY_THRESHOLD ; 
 int __GFP_NOWARN ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct netfront_queue *queue)
{
	struct sk_buff *skb;
	struct page *page;

	skb = FUNC0(queue->info->netdev,
				 RX_COPY_THRESHOLD + NET_IP_ALIGN,
				 GFP_ATOMIC | __GFP_NOWARN);
	if (FUNC5(!skb))
		return NULL;

	page = FUNC1(GFP_ATOMIC | __GFP_NOWARN);
	if (!page) {
		FUNC2(skb);
		return NULL;
	}
	FUNC3(skb, 0, page, 0, 0, PAGE_SIZE);

	/* Align ip header to a 16 bytes boundary */
	FUNC4(skb, NET_IP_ALIGN);
	skb->dev = queue->info->netdev;

	return skb;
}