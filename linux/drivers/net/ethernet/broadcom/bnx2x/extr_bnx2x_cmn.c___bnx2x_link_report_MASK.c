#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnx2x_link_report_data {int /*<<< orphan*/  line_speed; scalar_t__ link_report_flags; } ;
struct TYPE_5__ {scalar_t__ link_report_flags; } ;
struct TYPE_4__ {scalar_t__ link_up; } ;
struct bnx2x {int /*<<< orphan*/  dev; TYPE_2__ last_reported_link; int /*<<< orphan*/  link_cnt; TYPE_1__ link_vars; scalar_t__ force_link_down; } ;
typedef  int /*<<< orphan*/  cur_data ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_LINK_REPORT_FD ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_LINK_DOWN ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_RX_FC_ON ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_TX_FC_ON ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_link_report_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_link_report_data*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct bnx2x_link_report_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC13(struct bnx2x *bp)
{
	struct bnx2x_link_report_data cur_data;

	if (bp->force_link_down) {
		bp->link_vars.link_up = 0;
		return;
	}

	/* reread mf_cfg */
	if (FUNC1(bp) && !FUNC0(bp))
		FUNC4(bp);

	/* Read the current link report info */
	FUNC2(bp, &cur_data);

	/* Don't report link down or exactly the same link status twice */
	if (!FUNC5(&cur_data, &bp->last_reported_link, sizeof(cur_data)) ||
	    (FUNC12(BNX2X_LINK_REPORT_LINK_DOWN,
		      &bp->last_reported_link.link_report_flags) &&
	     FUNC12(BNX2X_LINK_REPORT_LINK_DOWN,
		      &cur_data.link_report_flags)))
		return;

	bp->link_cnt++;

	/* We are going to report a new link parameters now -
	 * remember the current data for the next time.
	 */
	FUNC6(&bp->last_reported_link, &cur_data, sizeof(cur_data));

	/* propagate status to VFs */
	if (FUNC1(bp))
		FUNC3(bp);

	if (FUNC12(BNX2X_LINK_REPORT_LINK_DOWN,
		     &cur_data.link_report_flags)) {
		FUNC9(bp->dev);
		FUNC7(bp->dev, "NIC Link is Down\n");
		return;
	} else {
		const char *duplex;
		const char *flow;

		FUNC10(bp->dev);

		if (FUNC11(BNX2X_LINK_REPORT_FD,
				       &cur_data.link_report_flags))
			duplex = "full";
		else
			duplex = "half";

		/* Handle the FC at the end so that only these flags would be
		 * possibly set. This way we may easily check if there is no FC
		 * enabled.
		 */
		if (cur_data.link_report_flags) {
			if (FUNC12(BNX2X_LINK_REPORT_RX_FC_ON,
				     &cur_data.link_report_flags)) {
				if (FUNC12(BNX2X_LINK_REPORT_TX_FC_ON,
				     &cur_data.link_report_flags))
					flow = "ON - receive & transmit";
				else
					flow = "ON - receive";
			} else {
				flow = "ON - transmit";
			}
		} else {
			flow = "none";
		}
		FUNC8(bp->dev, "NIC Link is Up, %d Mbps %s duplex, Flow control: %s\n",
			    cur_data.line_speed, duplex, flow);
	}
}