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
typedef  scalar_t__ u32 ;
struct tx_ring {scalar_t__ used; struct tcb* send_head; int /*<<< orphan*/ * send_tail; } ;
struct tcb {struct tcb* next; } ;
struct et131x_adapter {int /*<<< orphan*/  tcb_send_qlock; struct tx_ring tx_ring; } ;

/* Variables and functions */
 scalar_t__ NUM_TCB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,struct tcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct et131x_adapter *adapter)
{
	struct tcb *tcb;
	unsigned long flags;
	u32 freed = 0;
	struct tx_ring *tx_ring = &adapter->tx_ring;

	/* Any packets being sent? Check the first TCB on the send list */
	FUNC2(&adapter->tcb_send_qlock, flags);

	tcb = tx_ring->send_head;

	while (tcb != NULL && freed < NUM_TCB) {
		struct tcb *next = tcb->next;

		tx_ring->send_head = next;

		if (next == NULL)
			tx_ring->send_tail = NULL;

		tx_ring->used--;

		FUNC3(&adapter->tcb_send_qlock, flags);

		freed++;
		FUNC1(adapter, tcb);

		FUNC2(&adapter->tcb_send_qlock, flags);

		tcb = tx_ring->send_head;
	}

	FUNC0(freed == NUM_TCB);

	FUNC3(&adapter->tcb_send_qlock, flags);

	tx_ring->used = 0;
}