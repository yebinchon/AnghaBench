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
typedef  scalar_t__ u16 ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_mb_params {int /*<<< orphan*/  mcp_resp; int /*<<< orphan*/  mcp_param; int /*<<< orphan*/  param; int /*<<< orphan*/  cmd; } ;
struct qed_mcp_cmd_elem {scalar_t__ b_is_completed; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_lock; scalar_t__ drv_mb_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVOID_BLOCK ; 
 int /*<<< orphan*/  CAN_SLEEP ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_MSG_CODE_MASK ; 
 scalar_t__ FUNC3 (struct qed_mcp_mb_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,struct qed_mcp_mb_params*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct qed_mcp_cmd_elem* FUNC6 (struct qed_hwfn*,struct qed_mcp_mb_params*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,struct qed_mcp_cmd_elem*) ; 
 int /*<<< orphan*/  FUNC8 (struct qed_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_hwfn*,struct qed_ptt*) ; 
 int FUNC12 (struct qed_hwfn*,struct qed_ptt*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static int
FUNC16(struct qed_hwfn *p_hwfn,
		       struct qed_ptt *p_ptt,
		       struct qed_mcp_mb_params *p_mb_params,
		       u32 max_retries, u32 usecs)
{
	u32 cnt = 0, msecs = FUNC0(usecs, 1000);
	struct qed_mcp_cmd_elem *p_cmd_elem;
	u16 seq_num;
	int rc = 0;

	/* Wait until the mailbox is non-occupied */
	do {
		/* Exit the loop if there is no pending command, or if the
		 * pending command is completed during this iteration.
		 * The spinlock stays locked until the command is sent.
		 */

		FUNC13(&p_hwfn->mcp_info->cmd_lock);

		if (!FUNC9(p_hwfn))
			break;

		rc = FUNC12(p_hwfn, p_ptt);
		if (!rc)
			break;
		else if (rc != -EAGAIN)
			goto err;

		FUNC14(&p_hwfn->mcp_info->cmd_lock);

		if (FUNC3(p_mb_params, CAN_SLEEP))
			FUNC5(msecs);
		else
			FUNC15(usecs);
	} while (++cnt < max_retries);

	if (cnt >= max_retries) {
		FUNC1(p_hwfn,
			  "The MFW mailbox is occupied by an uncompleted command. Failed to send command 0x%08x [param 0x%08x].\n",
			  p_mb_params->cmd, p_mb_params->param);
		return -EAGAIN;
	}

	/* Send the mailbox command */
	FUNC11(p_hwfn, p_ptt);
	seq_num = ++p_hwfn->mcp_info->drv_mb_seq;
	p_cmd_elem = FUNC6(p_hwfn, p_mb_params, seq_num);
	if (!p_cmd_elem) {
		rc = -ENOMEM;
		goto err;
	}

	FUNC4(p_hwfn, p_ptt, p_mb_params, seq_num);
	FUNC14(&p_hwfn->mcp_info->cmd_lock);

	/* Wait for the MFW response */
	do {
		/* Exit the loop if the command is already completed, or if the
		 * command is completed during this iteration.
		 * The spinlock stays locked until the list element is removed.
		 */

		if (FUNC3(p_mb_params, CAN_SLEEP))
			FUNC5(msecs);
		else
			FUNC15(usecs);

		FUNC13(&p_hwfn->mcp_info->cmd_lock);

		if (p_cmd_elem->b_is_completed)
			break;

		rc = FUNC12(p_hwfn, p_ptt);
		if (!rc)
			break;
		else if (rc != -EAGAIN)
			goto err;

		FUNC14(&p_hwfn->mcp_info->cmd_lock);
	} while (++cnt < max_retries);

	if (cnt >= max_retries) {
		FUNC1(p_hwfn,
			  "The MFW failed to respond to command 0x%08x [param 0x%08x].\n",
			  p_mb_params->cmd, p_mb_params->param);
		FUNC10(p_hwfn, p_ptt);

		FUNC13(&p_hwfn->mcp_info->cmd_lock);
		FUNC7(p_hwfn, p_cmd_elem);
		FUNC14(&p_hwfn->mcp_info->cmd_lock);

		if (!FUNC3(p_mb_params, AVOID_BLOCK))
			FUNC8(p_hwfn, true);

		return -EAGAIN;
	}

	FUNC7(p_hwfn, p_cmd_elem);
	FUNC14(&p_hwfn->mcp_info->cmd_lock);

	FUNC2(p_hwfn,
		   QED_MSG_SP,
		   "MFW mailbox: response 0x%08x param 0x%08x [after %d.%03d ms]\n",
		   p_mb_params->mcp_resp,
		   p_mb_params->mcp_param,
		   (cnt * usecs) / 1000, (cnt * usecs) % 1000);

	/* Clear the sequence number from the MFW response */
	p_mb_params->mcp_resp &= FW_MSG_CODE_MASK;

	return 0;

err:
	FUNC14(&p_hwfn->mcp_info->cmd_lock);
	return rc;
}