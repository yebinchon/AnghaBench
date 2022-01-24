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
struct bnx2x {int timecounter_init_done; int /*<<< orphan*/  cyclecounter; int /*<<< orphan*/  timecounter; int /*<<< orphan*/  ptp_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_PTP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_ptp_task ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(struct bnx2x *bp)
{
	int rc;

	/* Configure PTP in HW */
	rc = FUNC3(bp);
	if (rc) {
		FUNC0("Stopping PTP initialization\n");
		return;
	}

	/* Init work queue for Tx timestamping */
	FUNC2(&bp->ptp_task, bnx2x_ptp_task);

	/* Init cyclecounter and timecounter. This is done only in the first
	 * load. If done in every load, PTP application will fail when doing
	 * unload / load (e.g. MTU change) while it is running.
	 */
	if (!bp->timecounter_init_done) {
		FUNC4(bp);
		FUNC7(&bp->timecounter, &bp->cyclecounter,
				 FUNC6(FUNC5()));
		bp->timecounter_init_done = 1;
	}

	FUNC1(BNX2X_MSG_PTP, "PTP initialization ended successfully\n");
}