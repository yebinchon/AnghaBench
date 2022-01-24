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
struct bnx2x {int stats_pending; int /*<<< orphan*/  fw_stats_req_mapping; TYPE_1__* fw_stats_req; int /*<<< orphan*/  stats_counter; } ;
struct TYPE_4__ {int /*<<< orphan*/  drv_stats_counter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NONE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_COMMON_STAT_QUERY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct bnx2x *bp)
{
	int rc;

	if (bp->stats_pending)
		return;

	bp->fw_stats_req->hdr.drv_stats_counter =
		FUNC6(bp->stats_counter++);

	FUNC0(BNX2X_MSG_STATS, "Sending statistics ramrod %d\n",
	   FUNC7(bp->fw_stats_req->hdr.drv_stats_counter));

	/* adjust the ramrod to include VF queues statistics */
	FUNC4(bp);
	FUNC3(bp);

	/* send FW stats ramrod */
	rc = FUNC5(bp, RAMROD_CMD_ID_COMMON_STAT_QUERY, 0,
			   FUNC1(bp->fw_stats_req_mapping),
			   FUNC2(bp->fw_stats_req_mapping),
			   NONE_CONNECTION_TYPE);
	if (rc == 0)
		bp->stats_pending = 1;
}