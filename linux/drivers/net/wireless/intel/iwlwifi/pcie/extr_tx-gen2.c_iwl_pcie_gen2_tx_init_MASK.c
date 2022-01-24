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
struct iwl_txq {int id; } ;
struct iwl_trans_pcie {int cmd_queue; int /*<<< orphan*/  queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int FUNC3 (struct iwl_trans*,struct iwl_txq*,int,int) ; 
 int FUNC4 (struct iwl_trans*,struct iwl_txq*,int,int) ; 
 struct iwl_txq* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(struct iwl_trans *trans, int txq_id, int queue_size)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_txq *queue;
	int ret;

	/* alloc and init the tx queue */
	if (!trans_pcie->txq[txq_id]) {
		queue = FUNC5(sizeof(*queue), GFP_KERNEL);
		if (!queue) {
			FUNC0(trans, "Not enough memory for tx queue\n");
			return -ENOMEM;
		}
		trans_pcie->txq[txq_id] = queue;
		ret = FUNC3(trans, queue, queue_size, true);
		if (ret) {
			FUNC0(trans, "Tx %d queue init failed\n", txq_id);
			goto error;
		}
	} else {
		queue = trans_pcie->txq[txq_id];
	}

	ret = FUNC4(trans, queue, queue_size,
				(txq_id == trans_pcie->cmd_queue));
	if (ret) {
		FUNC0(trans, "Tx %d queue alloc failed\n", txq_id);
		goto error;
	}
	trans_pcie->txq[txq_id]->id = txq_id;
	FUNC6(txq_id, trans_pcie->queue_used);

	return 0;

error:
	FUNC2(trans);
	return ret;
}