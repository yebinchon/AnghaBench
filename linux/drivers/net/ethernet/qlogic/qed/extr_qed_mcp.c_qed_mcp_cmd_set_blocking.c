
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int b_block_cmd; } ;


 int DP_INFO (struct qed_hwfn*,char*,char*) ;

__attribute__((used)) static void qed_mcp_cmd_set_blocking(struct qed_hwfn *p_hwfn, bool block_cmd)
{
 p_hwfn->mcp_info->b_block_cmd = block_cmd;

 DP_INFO(p_hwfn, "%s sending of mailbox commands to the MFW\n",
  block_cmd ? "Block" : "Unblock");
}
