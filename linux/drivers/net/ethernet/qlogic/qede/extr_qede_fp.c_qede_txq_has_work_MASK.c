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
typedef  scalar_t__ u16 ;
struct qede_tx_queue {int /*<<< orphan*/  tx_pbl; int /*<<< orphan*/ * hw_cons_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct qede_tx_queue *txq)
{
	u16 hw_bd_cons;

	/* Tell compiler that consumer and producer can change */
	FUNC0();
	hw_bd_cons = FUNC1(*txq->hw_cons_ptr);
	if (FUNC2(&txq->tx_pbl) == hw_bd_cons + 1)
		return 0;

	return hw_bd_cons != FUNC2(&txq->tx_pbl);
}