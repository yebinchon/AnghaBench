
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct qed_hwfn {int cdev; TYPE_2__ hw_info; } ;
struct TYPE_3__ {scalar_t__ igu_dsb_id; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,...) ;
 scalar_t__ IS_PF (int ) ;
 int NETIF_MSG_INTR ;
 scalar_t__ QED_SP_SB_ID ;
 scalar_t__ qed_get_pf_igu_sb_id (struct qed_hwfn*,scalar_t__) ;
 scalar_t__ qed_vf_get_igu_sb_id (struct qed_hwfn*,scalar_t__) ;

u16 qed_get_igu_sb_id(struct qed_hwfn *p_hwfn, u16 sb_id)
{
 u16 igu_sb_id;


 if (sb_id == QED_SP_SB_ID)
  igu_sb_id = p_hwfn->hw_info.p_igu_info->igu_dsb_id;
 else if (IS_PF(p_hwfn->cdev))
  igu_sb_id = qed_get_pf_igu_sb_id(p_hwfn, sb_id + 1);
 else
  igu_sb_id = qed_vf_get_igu_sb_id(p_hwfn, sb_id);

 if (sb_id == QED_SP_SB_ID)
  DP_VERBOSE(p_hwfn, NETIF_MSG_INTR,
      "Slowpath SB index in IGU is 0x%04x\n", igu_sb_id);
 else
  DP_VERBOSE(p_hwfn, NETIF_MSG_INTR,
      "SB [%04x] <--> IGU SB [%04x]\n", sb_id, igu_sb_id);

 return igu_sb_id;
}
