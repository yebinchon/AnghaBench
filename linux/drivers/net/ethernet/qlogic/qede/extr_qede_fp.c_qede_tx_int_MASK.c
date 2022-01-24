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
struct qede_tx_queue {int sw_tx_cons; int num_tx_buffers; int /*<<< orphan*/  tx_pbl; int /*<<< orphan*/  xmit_pkts; int /*<<< orphan*/ * hw_cons_ptr; int /*<<< orphan*/  ndev_txq_id; } ;
struct qede_dev {scalar_t__ state; int /*<<< orphan*/  ndev; } ;
struct netdev_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETIF_MSG_TX_DONE ; 
 scalar_t__ QEDE_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct netdev_queue*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct qede_dev*,struct qede_tx_queue*,int*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct qede_dev *edev, struct qede_tx_queue *txq)
{
	unsigned int pkts_compl = 0, bytes_compl = 0;
	struct netdev_queue *netdev_txq;
	u16 hw_bd_cons;
	int rc;

	netdev_txq = FUNC6(edev->ndev, txq->ndev_txq_id);

	hw_bd_cons = FUNC5(*txq->hw_cons_ptr);
	FUNC4();

	while (hw_bd_cons != FUNC10(&txq->tx_pbl)) {
		int len = 0;

		rc = FUNC12(edev, txq, &len);
		if (rc) {
			FUNC0(edev, "hw_bd_cons = %d, chain_cons=%d\n",
				  hw_bd_cons,
				  FUNC10(&txq->tx_pbl));
			break;
		}

		bytes_compl += len;
		pkts_compl++;
		txq->sw_tx_cons = (txq->sw_tx_cons + 1) % txq->num_tx_buffers;
		txq->xmit_pkts++;
	}

	FUNC7(netdev_txq, pkts_compl, bytes_compl);

	/* Need to make the tx_bd_cons update visible to start_xmit()
	 * before checking for netif_tx_queue_stopped().  Without the
	 * memory barrier, there is a small possibility that
	 * start_xmit() will miss it and cause the queue to be stopped
	 * forever.
	 * On the other hand we need an rmb() here to ensure the proper
	 * ordering of bit testing in the following
	 * netif_tx_queue_stopped(txq) call.
	 */
	FUNC13();

	if (FUNC15(FUNC8(netdev_txq))) {
		/* Taking tx_lock is needed to prevent reenabling the queue
		 * while it's empty. This could have happen if rx_action() gets
		 * suspended in qede_tx_int() after the condition before
		 * netif_tx_wake_queue(), while tx_action (qede_start_xmit()):
		 *
		 * stops the queue->sees fresh tx_bd_cons->releases the queue->
		 * sends some packets consuming the whole queue again->
		 * stops the queue
		 */

		FUNC2(netdev_txq, FUNC14());

		if ((FUNC8(netdev_txq)) &&
		    (edev->state == QEDE_STATE_OPEN) &&
		    (FUNC11(&txq->tx_pbl)
		      >= (MAX_SKB_FRAGS + 1))) {
			FUNC9(netdev_txq);
			FUNC1(edev, NETIF_MSG_TX_DONE,
				   "Wake queue was called\n");
		}

		FUNC3(netdev_txq);
	}

	return 0;
}