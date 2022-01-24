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
struct bnxt_link_info {int autoneg; int auto_pause_setting; int req_flow_ctrl; int force_pause_setting; scalar_t__ auto_mode; scalar_t__ req_link_speed; scalar_t__ force_link_speed; scalar_t__ req_duplex; scalar_t__ duplex_setting; scalar_t__ advertising; scalar_t__ auto_link_speeds; } ;
struct bnxt {int /*<<< orphan*/  dev; struct bnxt_link_info link_info; } ;

/* Variables and functions */
 int BNXT_AUTONEG_FLOW_CTRL ; 
 int BNXT_AUTONEG_SPEED ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BNXT_LINK_AUTO_NONE ; 
 int BNXT_LINK_PAUSE_BOTH ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*,int,int) ; 
 int FUNC4 (struct bnxt*) ; 
 int FUNC5 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct bnxt *bp)
{
	int rc;
	bool update_link = false;
	bool update_pause = false;
	bool update_eee = false;
	struct bnxt_link_info *link_info = &bp->link_info;

	rc = FUNC5(bp, true);
	if (rc) {
		FUNC6(bp->dev, "failed to update link (rc: %x)\n",
			   rc);
		return rc;
	}
	if (!FUNC1(bp))
		return 0;

	if ((link_info->autoneg & BNXT_AUTONEG_FLOW_CTRL) &&
	    (link_info->auto_pause_setting & BNXT_LINK_PAUSE_BOTH) !=
	    link_info->req_flow_ctrl)
		update_pause = true;
	if (!(link_info->autoneg & BNXT_AUTONEG_FLOW_CTRL) &&
	    link_info->force_pause_setting != link_info->req_flow_ctrl)
		update_pause = true;
	if (!(link_info->autoneg & BNXT_AUTONEG_SPEED)) {
		if (FUNC0(link_info->auto_mode))
			update_link = true;
		if (link_info->req_link_speed != link_info->force_link_speed)
			update_link = true;
		if (link_info->req_duplex != link_info->duplex_setting)
			update_link = true;
	} else {
		if (link_info->auto_mode == BNXT_LINK_AUTO_NONE)
			update_link = true;
		if (link_info->advertising != link_info->auto_link_speeds)
			update_link = true;
	}

	/* The last close may have shutdown the link, so need to call
	 * PHY_CFG to bring it back up.
	 */
	if (!FUNC7(bp->dev))
		update_link = true;

	if (!FUNC2(bp))
		update_eee = true;

	if (update_link)
		rc = FUNC3(bp, update_pause, update_eee);
	else if (update_pause)
		rc = FUNC4(bp);
	if (rc) {
		FUNC6(bp->dev, "failed to update phy setting (rc: %x)\n",
			   rc);
		return rc;
	}

	return rc;
}