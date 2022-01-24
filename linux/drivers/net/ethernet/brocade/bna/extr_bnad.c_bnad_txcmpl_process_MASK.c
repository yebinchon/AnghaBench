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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; } ;
struct bnad_tx_unmap {int /*<<< orphan*/  nvecs; struct sk_buff* skb; } ;
struct bnad {int dummy; } ;
struct bna_tcb {scalar_t__* hw_consumer_index; scalar_t__ consumer_index; scalar_t__ q_depth; TYPE_1__* txq; int /*<<< orphan*/  flags; struct bnad_tx_unmap* unmap_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 scalar_t__ FUNC0 (struct bna_tcb*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct bnad*,struct bnad_tx_unmap*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32
FUNC8(struct bnad *bnad, struct bna_tcb *tcb)
{
	u32 sent_packets = 0, sent_bytes = 0;
	u32 wis, unmap_wis, hw_cons, cons, q_depth;
	struct bnad_tx_unmap *unmap_q = tcb->unmap_q;
	struct bnad_tx_unmap *unmap;
	struct sk_buff *skb;

	/* Just return if TX is stopped */
	if (!FUNC7(BNAD_TXQ_TX_STARTED, &tcb->flags))
		return 0;

	hw_cons = *(tcb->hw_consumer_index);
	FUNC6();
	cons = tcb->consumer_index;
	q_depth = tcb->q_depth;

	wis = FUNC1(cons, hw_cons, q_depth);
	FUNC3(!(wis <= FUNC0(tcb, tcb->q_depth)));

	while (wis) {
		unmap = &unmap_q[cons];

		skb = unmap->skb;

		sent_packets++;
		sent_bytes += skb->len;

		unmap_wis = FUNC2(unmap->nvecs);
		wis -= unmap_wis;

		cons = FUNC4(bnad, unmap_q, q_depth, cons);
		FUNC5(skb);
	}

	/* Update consumer pointers. */
	tcb->consumer_index = hw_cons;

	tcb->txq->tx_packets += sent_packets;
	tcb->txq->tx_bytes += sent_bytes;

	return sent_packets;
}