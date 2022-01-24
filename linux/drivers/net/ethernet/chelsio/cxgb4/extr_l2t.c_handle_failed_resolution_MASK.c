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
struct sk_buff {int dummy; } ;
struct l2t_skb_cb {int /*<<< orphan*/  handle; int /*<<< orphan*/  (* arp_err_handler ) (int /*<<< orphan*/ ,struct sk_buff*) ;} ;
struct l2t_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  arpq; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct l2t_skb_cb* FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct adapter *adap, struct l2t_entry *e)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(&e->arpq)) != NULL) {
		const struct l2t_skb_cb *cb = FUNC0(skb);

		FUNC3(&e->lock);
		if (cb->arp_err_handler)
			cb->arp_err_handler(cb->handle, skb);
		else
			FUNC5(adap, skb);
		FUNC2(&e->lock);
	}
}