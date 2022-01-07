
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int port_addr; int public_base; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ) ;
 int MFW_PORT (struct qed_hwfn*) ;
 int PUBLIC_PORT ;
 int QED_MSG_SP ;
 int SECTION_ADDR (int ,int ) ;
 int SECTION_OFFSIZE_ADDR (int ,int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

void qed_mcp_cmd_port_init(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
 u32 addr = SECTION_OFFSIZE_ADDR(p_hwfn->mcp_info->public_base,
     PUBLIC_PORT);
 u32 mfw_mb_offsize = qed_rd(p_hwfn, p_ptt, addr);

 p_hwfn->mcp_info->port_addr = SECTION_ADDR(mfw_mb_offsize,
         MFW_PORT(p_hwfn));
 DP_VERBOSE(p_hwfn, QED_MSG_SP,
     "port_addr = 0x%x, port_id 0x%02x\n",
     p_hwfn->mcp_info->port_addr, MFW_PORT(p_hwfn));
}
