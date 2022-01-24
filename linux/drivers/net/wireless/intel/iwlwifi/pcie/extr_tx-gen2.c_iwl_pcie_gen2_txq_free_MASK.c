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
struct iwl_txq {int n_window; int /*<<< orphan*/  stuck_timer; TYPE_1__* entries; } ;
struct iwl_trans_pcie {int cmd_queue; int /*<<< orphan*/  queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_buf; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct iwl_trans *trans, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	struct iwl_txq *txq = trans_pcie->txq[txq_id];
	int i;

	if (FUNC1(!txq))
		return;

	FUNC5(trans, txq_id);

	/* De-alloc array of command/tx buffers */
	if (txq_id == trans_pcie->cmd_queue)
		for (i = 0; i < txq->n_window; i++) {
			FUNC6(txq->entries[i].cmd);
			FUNC6(txq->entries[i].free_buf);
		}
	FUNC3(&txq->stuck_timer);

	FUNC4(trans, txq);

	trans_pcie->txq[txq_id] = NULL;

	FUNC2(txq_id, trans_pcie->queue_used);
}