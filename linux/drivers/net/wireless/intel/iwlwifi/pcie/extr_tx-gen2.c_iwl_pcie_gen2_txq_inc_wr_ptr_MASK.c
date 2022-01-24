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
struct iwl_txq {int id; int write_ptr; int /*<<< orphan*/  lock; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBUS_TARG_WRPTR ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_trans *trans,
				  struct iwl_txq *txq)
{
	FUNC2(&txq->lock);

	FUNC0(trans, "Q:%d WR: 0x%x\n", txq->id, txq->write_ptr);

	/*
	 * if not in power-save mode, uCode will never sleep when we're
	 * trying to tx (during RFKILL, we're not trying to tx).
	 */
	FUNC1(trans, HBUS_TARG_WRPTR, txq->write_ptr | (txq->id << 16));
}