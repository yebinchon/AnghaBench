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
struct hwrm_port_phy_cfg_input {int /*<<< orphan*/  member_0; } ;
struct bnxt {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_PHY_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_port_phy_cfg_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct hwrm_port_phy_cfg_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,struct hwrm_port_phy_cfg_input*) ; 
 int FUNC4 (struct bnxt*,struct hwrm_port_phy_cfg_input*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct bnxt *bp, bool set_pause, bool set_eee)
{
	struct hwrm_port_phy_cfg_input req = {0};

	FUNC0(bp, &req, HWRM_PORT_PHY_CFG, -1, -1);
	if (set_pause)
		FUNC3(bp, &req);

	FUNC2(bp, &req);

	if (set_eee)
		FUNC1(bp, &req);
	return FUNC4(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}