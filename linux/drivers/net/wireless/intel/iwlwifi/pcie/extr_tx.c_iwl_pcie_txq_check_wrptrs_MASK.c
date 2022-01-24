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
struct iwl_txq {int need_update; int /*<<< orphan*/  lock; } ;
struct iwl_trans_pcie {int /*<<< orphan*/  queue_used; struct iwl_txq** txq; } ;
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	int i;

	for (i = 0; i < trans->trans_cfg->base_params->num_of_queues; i++) {
		struct iwl_txq *txq = trans_pcie->txq[i];

		if (!FUNC4(i, trans_pcie->queue_used))
			continue;

		FUNC2(&txq->lock);
		if (txq->need_update) {
			FUNC1(trans, txq);
			txq->need_update = false;
		}
		FUNC3(&txq->lock);
	}
}