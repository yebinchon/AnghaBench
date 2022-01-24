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
struct sk_buff {struct sk_buff* next; } ;
struct efx_tx_queue {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_tx_queue*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct efx_tx_queue *tx_queue,
			       struct sk_buff *skb)
{
	struct sk_buff *segments, *next;

	segments = FUNC4(skb, 0);
	if (FUNC0(segments))
		return FUNC1(segments);

	FUNC2(skb);
	skb = segments;

	while (skb) {
		next = skb->next;
		skb->next = NULL;

		FUNC3(tx_queue, skb);
		skb = next;
	}

	return 0;
}