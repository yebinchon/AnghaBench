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
typedef  scalar_t__ u8 ;
struct iwl_txq {scalar_t__ write_ptr; scalar_t__ read_ptr; int /*<<< orphan*/  lock; int /*<<< orphan*/  overflow_q; int /*<<< orphan*/  overflow_tx; } ;
struct iwl_trans_pcie {struct iwl_txq** txq; int /*<<< orphan*/ * queue_used; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 int /*<<< orphan*/  IWL_FLUSH_WAIT_MS ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int STATUS_TRANS_DEAD ; 
 scalar_t__ FUNC4 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,struct iwl_txq*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(struct iwl_trans *trans, int txq_idx)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	struct iwl_txq *txq;
	unsigned long now = jiffies;
	bool overflow_tx;
	u8 wr_ptr;

	/* Make sure the NIC is still alive in the bus */
	if (FUNC10(STATUS_TRANS_DEAD, &trans->status))
		return -ENODEV;

	if (!FUNC10(txq_idx, trans_pcie->queue_used))
		return -EINVAL;

	FUNC0(trans, "Emptying queue %d...\n", txq_idx);
	txq = trans_pcie->txq[txq_idx];

	FUNC8(&txq->lock);
	overflow_tx = txq->overflow_tx ||
		      !FUNC7(&txq->overflow_q);
	FUNC9(&txq->lock);

	wr_ptr = FUNC3(txq->write_ptr);

	while ((txq->read_ptr != FUNC3(txq->write_ptr) ||
		overflow_tx) &&
	       !FUNC11(jiffies,
			   now + FUNC6(IWL_FLUSH_WAIT_MS))) {
		u8 write_ptr = FUNC3(txq->write_ptr);

		/*
		 * If write pointer moved during the wait, warn only
		 * if the TX came from op mode. In case TX came from
		 * trans layer (overflow TX) don't warn.
		 */
		if (FUNC4(wr_ptr != write_ptr && !overflow_tx,
			      "WR pointer moved while flushing %d -> %d\n",
			      wr_ptr, write_ptr))
			return -ETIMEDOUT;
		wr_ptr = write_ptr;

		FUNC12(1000, 2000);

		FUNC8(&txq->lock);
		overflow_tx = txq->overflow_tx ||
			      !FUNC7(&txq->overflow_q);
		FUNC9(&txq->lock);
	}

	if (txq->read_ptr != txq->write_ptr) {
		FUNC1(trans,
			"fail to flush all tx fifo queues Q %d\n", txq_idx);
		FUNC5(trans, txq);
		return -ETIMEDOUT;
	}

	FUNC0(trans, "Queue %d is now empty.\n", txq_idx);

	return 0;
}