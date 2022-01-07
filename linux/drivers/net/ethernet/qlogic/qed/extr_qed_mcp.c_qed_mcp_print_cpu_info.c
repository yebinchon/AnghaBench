
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int ,int ,int ,int ,int ) ;
 int MCP_REG_CPU_MODE ;
 int MCP_REG_CPU_PROGRAM_COUNTER ;
 int MCP_REG_CPU_STATE ;
 int QED_MCP_RESP_ITER_US ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static void qed_mcp_print_cpu_info(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt)
{
 u32 cpu_mode, cpu_state, cpu_pc_0, cpu_pc_1, cpu_pc_2;
 u32 delay = QED_MCP_RESP_ITER_US;

 cpu_mode = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_MODE);
 cpu_state = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_STATE);
 cpu_pc_0 = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_PROGRAM_COUNTER);
 udelay(delay);
 cpu_pc_1 = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_PROGRAM_COUNTER);
 udelay(delay);
 cpu_pc_2 = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_PROGRAM_COUNTER);

 DP_NOTICE(p_hwfn,
    "MCP CPU info: mode 0x%08x, state 0x%08x, pc {0x%08x, 0x%08x, 0x%08x}\n",
    cpu_mode, cpu_state, cpu_pc_0, cpu_pc_1, cpu_pc_2);
}
