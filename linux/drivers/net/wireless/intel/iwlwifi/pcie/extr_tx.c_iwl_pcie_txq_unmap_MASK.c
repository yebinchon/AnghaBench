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
struct iwl_txq {size_t write_ptr; size_t read_ptr; int /*<<< orphan*/  lock; int /*<<< orphan*/  overflow_q; TYPE_1__* entries; } ;
struct iwl_trans_pcie {int cmd_queue; int /*<<< orphan*/  reg_lock; struct iwl_txq** txq; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;
struct TYPE_2__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int,size_t) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans_pcie*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,struct iwl_txq*) ; 
 size_t FUNC8 (struct iwl_trans*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct iwl_trans *trans, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_txq *txq = trans_pcie->txq[txq_id];

	FUNC11(&txq->lock);
	while (txq->write_ptr != txq->read_ptr) {
		FUNC0(trans, "Q %d Free %d\n",
				   txq_id, txq->read_ptr);

		if (txq_id != trans_pcie->cmd_queue) {
			struct sk_buff *skb = txq->entries[txq->read_ptr].skb;

			if (FUNC2(!skb))
				continue;

			FUNC6(trans_pcie, skb);
		}
		FUNC7(trans, txq);
		txq->read_ptr = FUNC8(trans, txq->read_ptr);

		if (txq->read_ptr == txq->write_ptr) {
			unsigned long flags;

			FUNC12(&trans_pcie->reg_lock, flags);
			if (txq_id == trans_pcie->cmd_queue)
				FUNC5(trans);
			FUNC14(&trans_pcie->reg_lock, flags);
		}
	}

	while (!FUNC10(&txq->overflow_q)) {
		struct sk_buff *skb = FUNC3(&txq->overflow_q);

		FUNC4(trans->op_mode, skb);
	}

	FUNC13(&txq->lock);

	/* just in case - this queue may have been stopped */
	FUNC9(trans, txq);
}