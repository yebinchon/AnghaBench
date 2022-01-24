#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  nelems; } ;
struct bnxt_tc_info {int /*<<< orphan*/  iter; int /*<<< orphan*/  stats_batch; TYPE_1__ flow_table; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bnxt*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct bnxt *bp)
{
	struct bnxt_tc_info *tc_info = bp->tc_info;
	int num_flows, rc;

	num_flows = FUNC0(&tc_info->flow_table.nelems);
	if (!num_flows)
		return;

	FUNC3(&tc_info->flow_table, &tc_info->iter);

	for (;;) {
		rc = FUNC1(bp, tc_info->stats_batch,
						   &num_flows);
		if (rc) {
			if (rc == -EAGAIN)
				continue;
			break;
		}

		if (!num_flows)
			break;

		FUNC2(bp, num_flows,
						tc_info->stats_batch);
	}

	FUNC4(&tc_info->iter);
}