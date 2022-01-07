
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {scalar_t__ mcp_hist; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,scalar_t__) ;
 int MISCS_REG_GENERIC_POR_0 ;
 int QED_MSG_SP ;
 int qed_load_mcp_offsets (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_mcp_cmd_port_init (struct qed_hwfn*,struct qed_ptt*) ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static void qed_mcp_reread_offsets(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt)
{
 u32 generic_por_0 = qed_rd(p_hwfn, p_ptt, MISCS_REG_GENERIC_POR_0);




 if (p_hwfn->mcp_info->mcp_hist != generic_por_0) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_SP,
      "Rereading MCP offsets [mcp_hist 0x%08x, generic_por_0 0x%08x]\n",
      p_hwfn->mcp_info->mcp_hist, generic_por_0);

  qed_load_mcp_offsets(p_hwfn, p_ptt);
  qed_mcp_cmd_port_init(p_hwfn, p_ptt);
 }
}
