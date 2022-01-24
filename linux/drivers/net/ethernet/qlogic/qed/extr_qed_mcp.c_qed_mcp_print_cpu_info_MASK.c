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
typedef  int /*<<< orphan*/  u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCP_REG_CPU_MODE ; 
 int /*<<< orphan*/  MCP_REG_CPU_PROGRAM_COUNTER ; 
 int /*<<< orphan*/  MCP_REG_CPU_STATE ; 
 int /*<<< orphan*/  QED_MCP_RESP_ITER_US ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn,
				   struct qed_ptt *p_ptt)
{
	u32 cpu_mode, cpu_state, cpu_pc_0, cpu_pc_1, cpu_pc_2;
	u32 delay = QED_MCP_RESP_ITER_US;

	cpu_mode = FUNC1(p_hwfn, p_ptt, MCP_REG_CPU_MODE);
	cpu_state = FUNC1(p_hwfn, p_ptt, MCP_REG_CPU_STATE);
	cpu_pc_0 = FUNC1(p_hwfn, p_ptt, MCP_REG_CPU_PROGRAM_COUNTER);
	FUNC2(delay);
	cpu_pc_1 = FUNC1(p_hwfn, p_ptt, MCP_REG_CPU_PROGRAM_COUNTER);
	FUNC2(delay);
	cpu_pc_2 = FUNC1(p_hwfn, p_ptt, MCP_REG_CPU_PROGRAM_COUNTER);

	FUNC0(p_hwfn,
		  "MCP CPU info: mode 0x%08x, state 0x%08x, pc {0x%08x, 0x%08x, 0x%08x}\n",
		  cpu_mode, cpu_state, cpu_pc_0, cpu_pc_1, cpu_pc_2);
}