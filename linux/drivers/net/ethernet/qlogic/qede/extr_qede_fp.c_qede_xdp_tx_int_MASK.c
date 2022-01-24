#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_6__ {TYPE_2__* xdp; } ;
struct qede_tx_queue {scalar_t__ sw_tx_cons; int num_tx_buffers; int /*<<< orphan*/  xmit_pkts; TYPE_3__ sw_tx_ring; int /*<<< orphan*/  tx_pbl; int /*<<< orphan*/ * hw_cons_ptr; } ;
struct qede_dev {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  page; int /*<<< orphan*/  mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct qede_dev *edev, struct qede_tx_queue *txq)
{
	u16 hw_bd_cons, idx;

	hw_bd_cons = FUNC3(*txq->hw_cons_ptr);
	FUNC1();

	while (hw_bd_cons != FUNC5(&txq->tx_pbl)) {
		FUNC4(&txq->tx_pbl);
		idx = txq->sw_tx_cons;

		FUNC2(&edev->pdev->dev,
			       txq->sw_tx_ring.xdp[idx].mapping,
			       PAGE_SIZE, DMA_BIDIRECTIONAL);
		FUNC0(txq->sw_tx_ring.xdp[idx].page);

		txq->sw_tx_cons = (txq->sw_tx_cons + 1) % txq->num_tx_buffers;
		txq->xmit_pkts++;
	}
}