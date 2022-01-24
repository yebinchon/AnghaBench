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
struct mac_stx {int dummy; } ;
struct host_port_stats {int /*<<< orphan*/ * mac_stx; } ;
struct TYPE_2__ {scalar_t__ mac_type; scalar_t__ line_speed; scalar_t__ link_up; } ;
struct bnx2x {scalar_t__ state; TYPE_1__ link_vars; int /*<<< orphan*/  link_params; } ;

/* Variables and functions */
 scalar_t__ BNX2X_STATE_OPEN ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ MAC_TYPE_EMAC ; 
 int /*<<< orphan*/  STATS_EVENT_LINK_UP ; 
 int /*<<< orphan*/  STATS_EVENT_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 struct host_port_stats* FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  port_stats ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp)
{
	/* Make sure that we are synced with the current statistics */
	FUNC7(bp, STATS_EVENT_STOP);

	FUNC4(&bp->link_params, &bp->link_vars);

	FUNC2(bp);

	if (bp->link_vars.link_up) {

		if (bp->link_vars.mac_type != MAC_TYPE_EMAC) {
			struct host_port_stats *pstats;

			pstats = FUNC6(bp, port_stats);
			/* reset old mac stats */
			FUNC8(&(pstats->mac_stx[0]), 0,
			       sizeof(struct mac_stx));
		}
		if (bp->state == BNX2X_STATE_OPEN)
			FUNC7(bp, STATS_EVENT_LINK_UP);
	}

	if (bp->link_vars.link_up && bp->link_vars.line_speed)
		FUNC5(bp);

	FUNC1(bp);

	if (FUNC0(bp))
		FUNC3(bp);
}