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
struct iwl_trans_pcie {struct iwl_rxq* rxq; } ;
struct iwl_trans {int num_rx_queues; } ;
struct iwl_rxq {int need_update; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,struct iwl_rxq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	int i;

	for (i = 0; i < trans->num_rx_queues; i++) {
		struct iwl_rxq *rxq = &trans_pcie->rxq[i];

		if (!rxq->need_update)
			continue;
		FUNC2(&rxq->lock);
		FUNC1(trans, rxq);
		rxq->need_update = false;
		FUNC3(&rxq->lock);
	}
}