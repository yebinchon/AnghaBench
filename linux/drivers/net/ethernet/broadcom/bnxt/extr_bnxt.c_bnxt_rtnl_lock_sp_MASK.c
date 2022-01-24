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
struct bnxt {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_STATE_IN_SP_TASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp)
{
	/* We are called from bnxt_sp_task which has BNXT_STATE_IN_SP_TASK
	 * set.  If the device is being closed, bnxt_close() may be holding
	 * rtnl() and waiting for BNXT_STATE_IN_SP_TASK to clear.  So we
	 * must clear BNXT_STATE_IN_SP_TASK before holding rtnl().
	 */
	FUNC0(BNXT_STATE_IN_SP_TASK, &bp->state);
	FUNC1();
}