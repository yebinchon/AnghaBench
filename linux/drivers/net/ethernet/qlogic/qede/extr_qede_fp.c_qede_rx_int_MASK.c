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
typedef  scalar_t__ u16 ;
struct qede_rx_queue {int rcv_pkts; scalar_t__ filled_buffers; scalar_t__ num_rx_buffers; int /*<<< orphan*/  rx_comp_ring; int /*<<< orphan*/ * hw_cons_ptr; } ;
struct qede_fastpath {struct qede_dev* edev; struct qede_rx_queue* rxq; } ;
struct qede_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct qede_rx_queue*,int) ; 
 scalar_t__ FUNC4 (struct qede_dev*,struct qede_fastpath*,struct qede_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*,struct qede_rx_queue*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct qede_fastpath *fp, int budget)
{
	struct qede_rx_queue *rxq = fp->rxq;
	struct qede_dev *edev = fp->edev;
	int work_done = 0, rcv_pkts = 0;
	u16 hw_comp_cons, sw_comp_cons;

	hw_comp_cons = FUNC0(*rxq->hw_cons_ptr);
	sw_comp_cons = FUNC1(&rxq->rx_comp_ring);

	/* Memory barrier to prevent the CPU from doing speculative reads of CQE
	 * / BD in the while-loop before reading hw_comp_cons. If the CQE is
	 * read before it is written by FW, then FW writes CQE and SB, and then
	 * the CPU reads the hw_comp_cons, it will use an old CQE.
	 */
	FUNC6();

	/* Loop to complete all indicated BDs */
	while ((sw_comp_cons != hw_comp_cons) && (work_done < budget)) {
		rcv_pkts += FUNC4(edev, fp, rxq);
		FUNC2(&rxq->rx_comp_ring);
		sw_comp_cons = FUNC1(&rxq->rx_comp_ring);
		work_done++;
	}

	rxq->rcv_pkts += rcv_pkts;

	/* Allocate replacement buffers */
	while (rxq->num_rx_buffers - rxq->filled_buffers)
		if (FUNC3(rxq, false))
			break;

	/* Update producers */
	FUNC5(edev, rxq);

	return work_done;
}