#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * sring; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sring; } ;
struct netfront_queue {scalar_t__ tx_irq; scalar_t__ rx_irq; TYPE_2__ rx; TYPE_1__ tx; void* rx_ring_ref; void* tx_ring_ref; int /*<<< orphan*/  gref_rx_head; int /*<<< orphan*/  gref_tx_head; int /*<<< orphan*/  napi; scalar_t__ rx_evtchn; scalar_t__ tx_evtchn; int /*<<< orphan*/  rx_refill_timer; } ;
struct netfront_info {TYPE_3__* netdev; struct netfront_queue* queues; } ;
struct TYPE_7__ {unsigned int real_num_tx_queues; } ;

/* Variables and functions */
 void* GRANT_INVALID_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct netfront_queue*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct netfront_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_queue*) ; 

__attribute__((used)) static void FUNC9(struct netfront_info *info)
{
	unsigned int i = 0;
	unsigned int num_queues = info->netdev->real_num_tx_queues;

	FUNC3(info->netdev);

	for (i = 0; i < num_queues && info->queues; ++i) {
		struct netfront_queue *queue = &info->queues[i];

		FUNC0(&queue->rx_refill_timer);

		if (queue->tx_irq && (queue->tx_irq == queue->rx_irq))
			FUNC5(queue->tx_irq, queue);
		if (queue->tx_irq && (queue->tx_irq != queue->rx_irq)) {
			FUNC5(queue->tx_irq, queue);
			FUNC5(queue->rx_irq, queue);
		}
		queue->tx_evtchn = queue->rx_evtchn = 0;
		queue->tx_irq = queue->rx_irq = 0;

		if (FUNC4(info->netdev))
			FUNC2(&queue->napi);

		FUNC8(queue);
		FUNC7(queue);
		FUNC1(queue->gref_tx_head);
		FUNC1(queue->gref_rx_head);

		/* End access and free the pages */
		FUNC6(queue->tx_ring_ref, queue->tx.sring);
		FUNC6(queue->rx_ring_ref, queue->rx.sring);

		queue->tx_ring_ref = GRANT_INVALID_REF;
		queue->rx_ring_ref = GRANT_INVALID_REF;
		queue->tx.sring = NULL;
		queue->rx.sring = NULL;
	}
}