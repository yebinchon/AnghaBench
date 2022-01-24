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
struct hwrm_port_mac_cfg_input {int /*<<< orphan*/  lpbk; int /*<<< orphan*/  enables; int /*<<< orphan*/  member_0; } ;
struct bnxt {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_MAC_CFG ; 
 int /*<<< orphan*/  PORT_MAC_CFG_REQ_ENABLES_LPBK ; 
 int /*<<< orphan*/  PORT_MAC_CFG_REQ_LPBK_LOCAL ; 
 int /*<<< orphan*/  PORT_MAC_CFG_REQ_LPBK_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_port_mac_cfg_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bnxt*,struct hwrm_port_mac_cfg_input*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp, bool enable)
{
	struct hwrm_port_mac_cfg_input req = {0};

	FUNC0(bp, &req, HWRM_PORT_MAC_CFG, -1, -1);

	req.enables = FUNC1(PORT_MAC_CFG_REQ_ENABLES_LPBK);
	if (enable)
		req.lpbk = PORT_MAC_CFG_REQ_LPBK_LOCAL;
	else
		req.lpbk = PORT_MAC_CFG_REQ_LPBK_NONE;
	return FUNC2(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}