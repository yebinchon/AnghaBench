
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_mcp_link_state {int dummy; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {struct qed_mcp_link_state link_output; } ;



struct qed_mcp_link_state
*qed_mcp_get_link_state(struct qed_hwfn *p_hwfn)
{
 if (!p_hwfn || !p_hwfn->mcp_info)
  return ((void*)0);
 return &p_hwfn->mcp_info->link_output;
}
