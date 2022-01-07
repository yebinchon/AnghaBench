
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int cdev; } ;


 scalar_t__ QED_IS_BB (int ) ;
 int qed_mcp_config_vf_msix_ah (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_mcp_config_vf_msix_bb (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

int qed_mcp_config_vf_msix(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt, u8 vf_id, u8 num)
{
 if (QED_IS_BB(p_hwfn->cdev))
  return qed_mcp_config_vf_msix_bb(p_hwfn, p_ptt, vf_id, num);
 else
  return qed_mcp_config_vf_msix_ah(p_hwfn, p_ptt, num);
}
