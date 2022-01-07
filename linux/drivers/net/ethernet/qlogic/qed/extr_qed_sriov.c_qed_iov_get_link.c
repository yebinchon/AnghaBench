
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct qed_bulletin_content* p_virt; } ;
struct qed_vf_info {TYPE_1__ bulletin; } ;
struct qed_mcp_link_state {int dummy; } ;
struct qed_mcp_link_params {int dummy; } ;
struct qed_mcp_link_capabilities {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct qed_bulletin_content {int dummy; } ;


 int __qed_vf_get_link_caps (struct qed_hwfn*,struct qed_mcp_link_capabilities*,struct qed_bulletin_content*) ;
 int __qed_vf_get_link_params (struct qed_hwfn*,struct qed_mcp_link_params*,struct qed_bulletin_content*) ;
 int __qed_vf_get_link_state (struct qed_hwfn*,struct qed_mcp_link_state*,struct qed_bulletin_content*) ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static void qed_iov_get_link(struct qed_hwfn *p_hwfn,
        u16 vfid,
        struct qed_mcp_link_params *p_params,
        struct qed_mcp_link_state *p_link,
        struct qed_mcp_link_capabilities *p_caps)
{
 struct qed_vf_info *p_vf = qed_iov_get_vf_info(p_hwfn,
             vfid,
             0);
 struct qed_bulletin_content *p_bulletin;

 if (!p_vf)
  return;

 p_bulletin = p_vf->bulletin.p_virt;

 if (p_params)
  __qed_vf_get_link_params(p_hwfn, p_params, p_bulletin);
 if (p_link)
  __qed_vf_get_link_state(p_hwfn, p_link, p_bulletin);
 if (p_caps)
  __qed_vf_get_link_caps(p_hwfn, p_caps, p_bulletin);
}
