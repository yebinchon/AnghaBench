
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_hwfn {int p_dpc_ptt; int cdev; } ;


 int DP_INFO (int ,char*,int ) ;
 int MCP_REG_CPU_EVENT_MASK ;
 int MCP_REG_CPU_STATE ;
 int qed_rd (struct qed_hwfn*,int ,int ) ;
 int qed_wr (struct qed_hwfn*,int ,int ,int) ;

__attribute__((used)) static int qed_mcp_attn_cb(struct qed_hwfn *p_hwfn)
{
 u32 tmp = qed_rd(p_hwfn, p_hwfn->p_dpc_ptt, MCP_REG_CPU_STATE);


 DP_INFO(p_hwfn->cdev, "MCP_REG_CPU_STATE: %08x - Masking...\n",
  tmp);
 qed_wr(p_hwfn, p_hwfn->p_dpc_ptt, MCP_REG_CPU_EVENT_MASK,
        0xffffffff);

 return 0;
}
