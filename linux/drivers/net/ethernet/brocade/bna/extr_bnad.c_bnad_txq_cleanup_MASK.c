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
struct bnad_tx_unmap {struct sk_buff* skb; } ;
struct bnad {int dummy; } ;
struct bna_tcb {int q_depth; struct bnad_tx_unmap* unmap_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnad*,struct bnad_tx_unmap*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC2(struct bnad *bnad, struct bna_tcb *tcb)
{
	struct bnad_tx_unmap *unmap_q = tcb->unmap_q;
	struct sk_buff *skb;
	int i;

	for (i = 0; i < tcb->q_depth; i++) {
		skb = unmap_q[i].skb;
		if (!skb)
			continue;
		FUNC0(bnad, unmap_q, tcb->q_depth, i);

		FUNC1(skb);
	}
}