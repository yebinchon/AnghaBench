
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int,int) ;
 int EBUSY ;
 int MCP_REG_CPU_MODE ;
 int MCP_REG_CPU_MODE_SOFT_HALT ;
 int MCP_REG_CPU_STATE ;
 int MCP_REG_CPU_STATE_SOFT_HALTED ;
 int QED_MCP_RESUME_SLEEP_MS ;
 int msleep (int ) ;
 int qed_mcp_cmd_set_blocking (struct qed_hwfn*,int) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

int qed_mcp_resume(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 cpu_mode, cpu_state;

 qed_wr(p_hwfn, p_ptt, MCP_REG_CPU_STATE, 0xffffffff);

 cpu_mode = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_MODE);
 cpu_mode &= ~MCP_REG_CPU_MODE_SOFT_HALT;
 qed_wr(p_hwfn, p_ptt, MCP_REG_CPU_MODE, cpu_mode);
 msleep(QED_MCP_RESUME_SLEEP_MS);
 cpu_state = qed_rd(p_hwfn, p_ptt, MCP_REG_CPU_STATE);

 if (cpu_state & MCP_REG_CPU_STATE_SOFT_HALTED) {
  DP_NOTICE(p_hwfn,
     "Failed to resume the MCP [CPU_MODE = 0x%08x, CPU_STATE = 0x%08x]\n",
     cpu_mode, cpu_state);
  return -EBUSY;
 }

 qed_mcp_cmd_set_blocking(p_hwfn, 0);

 return 0;
}
