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
typedef  scalar_t__ u16 ;
struct link_params {scalar_t__* req_line_speed; int* speed_cap_mask; int /*<<< orphan*/  loopback_mode; } ;
struct TYPE_2__ {scalar_t__ link_up; } ;
struct bnx2x {struct link_params link_params; int /*<<< orphan*/  period_task; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int EINVAL ; 
 int LOAD_DIAG ; 
 int LOAD_LOOPBACK_EXT ; 
 int /*<<< orphan*/  LOOPBACK_EXT ; 
 int /*<<< orphan*/  LOOPBACK_XGXS ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_20G ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_10000 ; 
 scalar_t__ SPEED_20000 ; 
 int /*<<< orphan*/  STATS_EVENT_LINK_UP ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int FUNC7 (struct link_params*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_wq ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC12(struct bnx2x *bp, int load_mode)
{
	int rc, cfx_idx = FUNC4(bp);
	u16 req_line_speed = bp->link_params.req_line_speed[cfx_idx];

	if (!FUNC1(bp)) {
		FUNC9(bp);
		FUNC2(bp);

		if (load_mode == LOAD_DIAG) {
			struct link_params *lp = &bp->link_params;
			lp->loopback_mode = LOOPBACK_XGXS;
			/* Prefer doing PHY loopback at highest speed */
			if (lp->req_line_speed[cfx_idx] < SPEED_20000) {
				if (lp->speed_cap_mask[cfx_idx] &
				    PORT_HW_CFG_SPEED_CAPABILITY_D0_20G)
					lp->req_line_speed[cfx_idx] =
					SPEED_20000;
				else if (lp->speed_cap_mask[cfx_idx] &
					    PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)
						lp->req_line_speed[cfx_idx] =
						SPEED_10000;
				else
					lp->req_line_speed[cfx_idx] =
					SPEED_1000;
			}
		}

		if (load_mode == LOAD_LOOPBACK_EXT) {
			struct link_params *lp = &bp->link_params;
			lp->loopback_mode = LOOPBACK_EXT;
		}

		rc = FUNC7(&bp->link_params, &bp->link_vars);

		FUNC8(bp);

		FUNC5(bp);

		FUNC3(bp);

		if (bp->link_vars.link_up) {
			FUNC10(bp, STATS_EVENT_LINK_UP);
			FUNC6(bp);
		}
		FUNC11(bnx2x_wq, &bp->period_task, 0);
		bp->link_params.req_line_speed[cfx_idx] = req_line_speed;
		return rc;
	}
	FUNC0("Bootcode is missing - can not initialize link\n");
	return -EINVAL;
}