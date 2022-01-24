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
struct bnx2x_link_report_data {int /*<<< orphan*/  link_report_flags; int /*<<< orphan*/  line_speed; } ;
struct TYPE_2__ {scalar_t__ duplex; int flow_ctrl; int /*<<< orphan*/  link_up; } ;
struct bnx2x {int flags; struct bnx2x_link_report_data vf_link_vars; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int BNX2X_FLOW_CTRL_RX ; 
 int BNX2X_FLOW_CTRL_TX ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_FD ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_LINK_DOWN ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_RX_FC_ON ; 
 int /*<<< orphan*/  BNX2X_LINK_REPORT_TX_FC_ON ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int MF_FUNC_DIS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_link_report_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp,
				   struct bnx2x_link_report_data *data)
{
	FUNC4(data, 0, sizeof(*data));

	if (FUNC1(bp)) {
		/* Fill the report data: effective line speed */
		data->line_speed = FUNC3(bp);

		/* Link is down */
		if (!bp->link_vars.link_up || (bp->flags & MF_FUNC_DIS))
			FUNC2(BNX2X_LINK_REPORT_LINK_DOWN,
				  &data->link_report_flags);

		if (!FUNC0(bp))
			FUNC2(BNX2X_LINK_REPORT_LINK_DOWN,
				  &data->link_report_flags);

		/* Full DUPLEX */
		if (bp->link_vars.duplex == DUPLEX_FULL)
			FUNC2(BNX2X_LINK_REPORT_FD,
				  &data->link_report_flags);

		/* Rx Flow Control is ON */
		if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_RX)
			FUNC2(BNX2X_LINK_REPORT_RX_FC_ON,
				  &data->link_report_flags);

		/* Tx Flow Control is ON */
		if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_TX)
			FUNC2(BNX2X_LINK_REPORT_TX_FC_ON,
				  &data->link_report_flags);
	} else { /* VF */
		*data = bp->vf_link_vars;
	}
}