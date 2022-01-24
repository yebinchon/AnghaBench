#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tx_ring {int used; struct tcb* send_head; int /*<<< orphan*/ * send_tail; } ;
struct tcb {int index; struct tcb* next; } ;
struct et131x_adapter {int /*<<< orphan*/  tcb_send_qlock; int /*<<< orphan*/  netdev; TYPE_2__* regs; struct tx_ring tx_ring; } ;
struct TYPE_3__ {int /*<<< orphan*/  new_service_complete; } ;
struct TYPE_4__ {TYPE_1__ txdma; } ;

/* Variables and functions */
 int ET_DMA10_MASK ; 
 int ET_DMA10_WRAP ; 
 int FUNC0 (int) ; 
 int NUM_TCB ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*,struct tcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct et131x_adapter *adapter)
{
	unsigned long flags;
	u32 serviced;
	struct tcb *tcb;
	u32 index;
	struct tx_ring *tx_ring = &adapter->tx_ring;

	serviced = FUNC3(&adapter->regs->txdma.new_service_complete);
	index = FUNC0(serviced);

	/* Has the ring wrapped?  Process any descriptors that do not have
	 * the same "wrap" indicator as the current completion indicator
	 */
	FUNC4(&adapter->tcb_send_qlock, flags);

	tcb = tx_ring->send_head;

	while (tcb &&
	       ((serviced ^ tcb->index) & ET_DMA10_WRAP) &&
	       index < FUNC0(tcb->index)) {
		tx_ring->used--;
		tx_ring->send_head = tcb->next;
		if (tcb->next == NULL)
			tx_ring->send_tail = NULL;

		FUNC5(&adapter->tcb_send_qlock, flags);
		FUNC1(adapter, tcb);
		FUNC4(&adapter->tcb_send_qlock, flags);

		/* Goto the next packet */
		tcb = tx_ring->send_head;
	}
	while (tcb &&
	       !((serviced ^ tcb->index) & ET_DMA10_WRAP) &&
	       index > (tcb->index & ET_DMA10_MASK)) {
		tx_ring->used--;
		tx_ring->send_head = tcb->next;
		if (tcb->next == NULL)
			tx_ring->send_tail = NULL;

		FUNC5(&adapter->tcb_send_qlock, flags);
		FUNC1(adapter, tcb);
		FUNC4(&adapter->tcb_send_qlock, flags);

		/* Goto the next packet */
		tcb = tx_ring->send_head;
	}

	/* Wake up the queue when we hit a low-water mark */
	if (tx_ring->used <= NUM_TCB / 3)
		FUNC2(adapter->netdev);

	FUNC5(&adapter->tcb_send_qlock, flags);
}