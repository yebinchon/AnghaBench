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
struct hwrm_port_phy_cfg_input {int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int autoneg; int force_link_chng; scalar_t__ auto_pause_setting; int /*<<< orphan*/  req_flow_ctrl; int /*<<< orphan*/  force_pause_setting; int /*<<< orphan*/  pause; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; TYPE_1__ link_info; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_AUTONEG_FLOW_CTRL ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_PHY_CFG ; 
 int FUNC0 (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_port_phy_cfg_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct bnxt *bp)
{
	struct hwrm_port_phy_cfg_input req = {0};
	int rc;

	FUNC1(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);
	FUNC3(bp, &req);

	if ((bp->link_info.autoneg & BNXT_AUTONEG_FLOW_CTRL) ||
	    bp->link_info.force_link_chng)
		FUNC2(bp, &req);

	FUNC5(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc && !(bp->link_info.autoneg & BNXT_AUTONEG_FLOW_CTRL)) {
		/* since changing of pause setting doesn't trigger any link
		 * change event, the driver needs to update the current pause
		 * result upon successfully return of the phy_cfg command
		 */
		bp->link_info.pause =
		bp->link_info.force_pause_setting = bp->link_info.req_flow_ctrl;
		bp->link_info.auto_pause_setting = 0;
		if (!bp->link_info.force_link_chng)
			FUNC4(bp);
	}
	bp->link_info.force_link_chng = false;
	FUNC6(&bp->hwrm_cmd_lock);
	return rc;
}