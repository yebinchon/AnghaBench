
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int BIT (int ) ;
 int PRS_ETH_VXLAN_NO_L2_ENABLE_OFFSET ;
 scalar_t__ PRS_ETH_VXLAN_NO_L2_OUTPUT_FORMAT ;
 int PRS_REG_MSG_INFO ;
 int PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

void qed_set_vxlan_no_l2_enable(struct qed_hwfn *p_hwfn,
    struct qed_ptt *p_ptt, bool enable)
{
 u32 reg_val, cfg_mask;


 reg_val = qed_rd(p_hwfn, p_ptt, PRS_REG_MSG_INFO);


 cfg_mask = BIT(PRS_ETH_VXLAN_NO_L2_ENABLE_OFFSET);

 if (enable) {

  reg_val |= cfg_mask;


  qed_wr(p_hwfn,
         p_ptt,
         PRS_REG_OUTPUT_FORMAT_4_0_BB_K2,
         (u32)PRS_ETH_VXLAN_NO_L2_OUTPUT_FORMAT);
 } else {

  reg_val &= ~cfg_mask;
 }


 qed_wr(p_hwfn, p_ptt, PRS_REG_MSG_INFO, reg_val);
}
