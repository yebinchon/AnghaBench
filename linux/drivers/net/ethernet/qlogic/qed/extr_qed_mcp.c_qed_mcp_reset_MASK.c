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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {scalar_t__ drv_mb_seq; int /*<<< orphan*/  cmd_lock; scalar_t__ b_block_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRV_MSG_CODE_MCP_RESET ; 
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  MISCS_REG_GENERIC_POR_0 ; 
 scalar_t__ QED_MCP_RESET_RETRIES ; 
 scalar_t__ QED_MCP_RESP_ITER_US ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 int /*<<< orphan*/  drv_mb_header ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*) ; 
 scalar_t__ FUNC5 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 org_mcp_reset_seq, seq, delay = QED_MCP_RESP_ITER_US, cnt = 0;
	int rc = 0;

	if (p_hwfn->mcp_info->b_block_cmd) {
		FUNC1(p_hwfn,
			  "The MFW is not responsive. Avoid sending MCP_RESET mailbox command.\n");
		return -EBUSY;
	}

	/* Ensure that only a single thread is accessing the mailbox */
	FUNC6(&p_hwfn->mcp_info->cmd_lock);

	org_mcp_reset_seq = FUNC5(p_hwfn, p_ptt, MISCS_REG_GENERIC_POR_0);

	/* Set drv command along with the updated sequence */
	FUNC4(p_hwfn, p_ptt);
	seq = ++p_hwfn->mcp_info->drv_mb_seq;
	FUNC3(p_hwfn, p_ptt, drv_mb_header, (DRV_MSG_CODE_MCP_RESET | seq));

	do {
		/* Wait for MFW response */
		FUNC8(delay);
		/* Give the FW up to 500 second (50*1000*10usec) */
	} while ((org_mcp_reset_seq == FUNC5(p_hwfn, p_ptt,
					      MISCS_REG_GENERIC_POR_0)) &&
		 (cnt++ < QED_MCP_RESET_RETRIES));

	if (org_mcp_reset_seq !=
	    FUNC5(p_hwfn, p_ptt, MISCS_REG_GENERIC_POR_0)) {
		FUNC2(p_hwfn, QED_MSG_SP,
			   "MCP was reset after %d usec\n", cnt * delay);
	} else {
		FUNC0(p_hwfn, "Failed to reset MCP\n");
		rc = -EAGAIN;
	}

	FUNC7(&p_hwfn->mcp_info->cmd_lock);

	return rc;
}