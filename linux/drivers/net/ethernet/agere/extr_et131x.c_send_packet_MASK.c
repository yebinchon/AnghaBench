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
struct tx_ring {scalar_t__ used; struct tcb* tcb_qtail; struct tcb* tcb_qhead; } ;
struct tcb {struct tcb* next; struct sk_buff* skb; } ;
struct sk_buff {scalar_t__ len; } ;
struct et131x_adapter {int /*<<< orphan*/  tcb_ready_qlock; struct tx_ring tx_ring; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ NUM_TCB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct et131x_adapter*,struct tcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct et131x_adapter *adapter)
{
	int status;
	struct tcb *tcb;
	unsigned long flags;
	struct tx_ring *tx_ring = &adapter->tx_ring;

	/* All packets must have at least a MAC address and a protocol type */
	if (skb->len < ETH_HLEN)
		return -EIO;

	FUNC2(&adapter->tcb_ready_qlock, flags);

	tcb = tx_ring->tcb_qhead;

	if (tcb == NULL) {
		FUNC3(&adapter->tcb_ready_qlock, flags);
		return -ENOMEM;
	}

	tx_ring->tcb_qhead = tcb->next;

	if (tx_ring->tcb_qhead == NULL)
		tx_ring->tcb_qtail = NULL;

	FUNC3(&adapter->tcb_ready_qlock, flags);

	tcb->skb = skb;
	tcb->next = NULL;

	status = FUNC1(adapter, tcb);

	if (status != 0) {
		FUNC2(&adapter->tcb_ready_qlock, flags);

		if (tx_ring->tcb_qtail)
			tx_ring->tcb_qtail->next = tcb;
		else
			/* Apparently ready Q is empty. */
			tx_ring->tcb_qhead = tcb;

		tx_ring->tcb_qtail = tcb;
		FUNC3(&adapter->tcb_ready_qlock, flags);
		return status;
	}
	FUNC0(tx_ring->used > NUM_TCB);
	return 0;
}