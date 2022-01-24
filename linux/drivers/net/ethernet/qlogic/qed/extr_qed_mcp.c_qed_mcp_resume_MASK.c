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
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  MCP_REG_CPU_MODE ; 
 int MCP_REG_CPU_MODE_SOFT_HALT ; 
 int /*<<< orphan*/  MCP_REG_CPU_STATE ; 
 int MCP_REG_CPU_STATE_SOFT_HALTED ; 
 int /*<<< orphan*/  QED_MCP_RESUME_SLEEP_MS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int) ; 
 int FUNC3 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	u32 cpu_mode, cpu_state;

	FUNC4(p_hwfn, p_ptt, MCP_REG_CPU_STATE, 0xffffffff);

	cpu_mode = FUNC3(p_hwfn, p_ptt, MCP_REG_CPU_MODE);
	cpu_mode &= ~MCP_REG_CPU_MODE_SOFT_HALT;
	FUNC4(p_hwfn, p_ptt, MCP_REG_CPU_MODE, cpu_mode);
	FUNC1(QED_MCP_RESUME_SLEEP_MS);
	cpu_state = FUNC3(p_hwfn, p_ptt, MCP_REG_CPU_STATE);

	if (cpu_state & MCP_REG_CPU_STATE_SOFT_HALTED) {
		FUNC0(p_hwfn,
			  "Failed to resume the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\n",
			  cpu_mode, cpu_state);
		return -EBUSY;
	}

	FUNC2(p_hwfn, false);

	return 0;
}