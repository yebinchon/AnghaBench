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
struct timer_list {int dummy; } ;
struct iwl_txq {scalar_t__ read_ptr; scalar_t__ write_ptr; int /*<<< orphan*/  lock; struct iwl_trans_pcie* trans_pcie; } ;
struct iwl_trans_pcie {int dummy; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_txq* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 struct iwl_trans* FUNC2 (struct iwl_trans_pcie*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stuck_timer ; 
 struct iwl_txq* txq ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct iwl_txq *txq = FUNC0(txq, t, stuck_timer);
	struct iwl_trans_pcie *trans_pcie = txq->trans_pcie;
	struct iwl_trans *trans = FUNC2(trans_pcie);

	FUNC4(&txq->lock);
	/* check if triggered erroneously */
	if (txq->read_ptr == txq->write_ptr) {
		FUNC5(&txq->lock);
		return;
	}
	FUNC5(&txq->lock);

	FUNC3(trans, txq);

	FUNC1(trans);
}