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
struct bnx2x {int /*<<< orphan*/ * ptp_tx_skb; int /*<<< orphan*/  ptp_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_PTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp)
{
	/* Cancel PTP work queue. Should be done after the Tx queues are
	 * drained to prevent additional scheduling.
	 */
	FUNC2(&bp->ptp_task);

	if (bp->ptp_tx_skb) {
		FUNC3(bp->ptp_tx_skb);
		bp->ptp_tx_skb = NULL;
	}

	/* Disable PTP in HW */
	FUNC1(bp);

	FUNC0(BNX2X_MSG_PTP, "PTP stop ended successfully\n");
}