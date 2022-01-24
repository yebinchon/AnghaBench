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
struct sk_buff {int dummy; } ;
struct iwl_txq {scalar_t__ write_ptr; scalar_t__ read_ptr; int /*<<< orphan*/  lock; int /*<<< orphan*/  overflow_q; TYPE_1__* entries; } ;
struct iwl_trans_pcie {int cmd_queue; struct iwl_txq** txq; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;
struct TYPE_2__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int,scalar_t__) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans_pcie*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,struct iwl_txq*) ; 
 int FUNC7 (struct iwl_txq*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct iwl_trans*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct iwl_trans *trans, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_txq *txq = trans_pcie->txq[txq_id];

	FUNC11(&txq->lock);
	while (txq->write_ptr != txq->read_ptr) {
		FUNC0(trans, "Q %d Free %d\n",
				   txq_id, txq->read_ptr);

		if (txq_id != trans_pcie->cmd_queue) {
			int idx = FUNC7(txq, txq->read_ptr);
			struct sk_buff *skb = txq->entries[idx].skb;

			if (FUNC2(!skb))
				continue;

			FUNC5(trans_pcie, skb);
		}
		FUNC6(trans, txq);
		txq->read_ptr = FUNC8(trans, txq->read_ptr);
	}

	while (!FUNC10(&txq->overflow_q)) {
		struct sk_buff *skb = FUNC3(&txq->overflow_q);

		FUNC4(trans->op_mode, skb);
	}

	FUNC12(&txq->lock);

	/* just in case - this queue may have been stopped */
	FUNC9(trans, txq);
}