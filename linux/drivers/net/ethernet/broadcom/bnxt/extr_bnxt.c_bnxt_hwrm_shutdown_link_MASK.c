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
struct hwrm_port_phy_cfg_input {int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
struct bnxt {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_PHY_CFG ; 
 int /*<<< orphan*/  PORT_PHY_CFG_REQ_FLAGS_FORCE_LINK_DWN ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_port_phy_cfg_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp)
{
	struct hwrm_port_phy_cfg_input req = {0};

	if (!FUNC0(bp))
		return 0;

	if (FUNC4(bp->pdev))
		return 0;

	FUNC1(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);
	req.flags = FUNC2(PORT_PHY_CFG_REQ_FLAGS_FORCE_LINK_DWN);
	return FUNC3(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}