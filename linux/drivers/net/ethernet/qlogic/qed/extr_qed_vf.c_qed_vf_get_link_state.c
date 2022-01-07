
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_mcp_link_state {int dummy; } ;
struct qed_hwfn {TYPE_1__* vf_iov_info; } ;
struct TYPE_2__ {int bulletin_shadow; } ;


 int __qed_vf_get_link_state (struct qed_hwfn*,struct qed_mcp_link_state*,int *) ;

void qed_vf_get_link_state(struct qed_hwfn *p_hwfn,
      struct qed_mcp_link_state *link)
{
 __qed_vf_get_link_state(p_hwfn, link,
    &(p_hwfn->vf_iov_info->bulletin_shadow));
}
