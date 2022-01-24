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
typedef  scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_MCP_HALT ; 
 int EBUSY ; 
 int /*<<< orphan*/  MCP_REG_CPU_MODE ; 
 int /*<<< orphan*/  MCP_REG_CPU_STATE ; 
 scalar_t__ MCP_REG_CPU_STATE_SOFT_HALTED ; 
 scalar_t__ QED_MCP_HALT_MAX_RETRIES ; 
 int /*<<< orphan*/  QED_MCP_HALT_SLEEP_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,int) ; 
 scalar_t__ FUNC5 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 

int FUNC6(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 resp = 0, param = 0, cpu_state, cnt = 0;
	int rc;

	rc = FUNC3(p_hwfn, p_ptt, DRV_MSG_CODE_MCP_HALT, 0, &resp,
			 &param);
	if (rc) {
		FUNC0(p_hwfn, "MCP response failure, aborting\n");
		return rc;
	}

	do {
		FUNC2(QED_MCP_HALT_SLEEP_MS);
		cpu_state = FUNC5(p_hwfn, p_ptt, MCP_REG_CPU_STATE);
		if (cpu_state & MCP_REG_CPU_STATE_SOFT_HALTED)
			break;
	} while (++cnt < QED_MCP_HALT_MAX_RETRIES);

	if (cnt == QED_MCP_HALT_MAX_RETRIES) {
		FUNC1(p_hwfn,
			  "Failed to halt the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\n",
			  FUNC5(p_hwfn, p_ptt, MCP_REG_CPU_MODE), cpu_state);
		return -EBUSY;
	}

	FUNC4(p_hwfn, true);

	return 0;
}