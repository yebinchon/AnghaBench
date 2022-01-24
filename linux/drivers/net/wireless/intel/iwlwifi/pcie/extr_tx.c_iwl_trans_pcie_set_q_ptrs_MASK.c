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
struct iwl_txq {int write_ptr; int read_ptr; int /*<<< orphan*/  lock; } ;
struct iwl_trans_pcie {struct iwl_txq** txq; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_trans *trans, int txq_id, int ptr)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	struct iwl_txq *txq = trans_pcie->txq[txq_id];

	FUNC1(&txq->lock);

	txq->write_ptr = ptr;
	txq->read_ptr = txq->write_ptr;

	FUNC2(&txq->lock);
}