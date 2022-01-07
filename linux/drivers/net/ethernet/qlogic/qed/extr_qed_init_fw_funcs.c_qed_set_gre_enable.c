
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DORQ_REG_L2_EDPM_TUNNEL_GRE_ETH_EN ;
 int DORQ_REG_L2_EDPM_TUNNEL_GRE_IP_EN ;
 int NIG_REG_ENC_TYPE_ENABLE ;
 int NIG_REG_ENC_TYPE_ENABLE_ETH_OVER_GRE_ENABLE_SHIFT ;
 int NIG_REG_ENC_TYPE_ENABLE_IP_OVER_GRE_ENABLE_SHIFT ;
 scalar_t__ PRS_ETH_OUTPUT_FORMAT ;
 scalar_t__ PRS_ETH_TUNN_OUTPUT_FORMAT ;
 int PRS_REG_ENCAPSULATION_TYPE_EN ;
 int PRS_REG_ENCAPSULATION_TYPE_EN_ETH_OVER_GRE_ENABLE_SHIFT ;
 int PRS_REG_ENCAPSULATION_TYPE_EN_IP_OVER_GRE_ENABLE_SHIFT ;
 int PRS_REG_OUTPUT_FORMAT_4_0_BB_K2 ;
 int SET_TUNNEL_TYPE_ENABLE_BIT (scalar_t__,int ,int) ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;

void qed_set_gre_enable(struct qed_hwfn *p_hwfn,
   struct qed_ptt *p_ptt,
   bool eth_gre_enable, bool ip_gre_enable)
{
 u32 reg_val;
 u8 shift;


 reg_val = qed_rd(p_hwfn, p_ptt, PRS_REG_ENCAPSULATION_TYPE_EN);
 shift = PRS_REG_ENCAPSULATION_TYPE_EN_ETH_OVER_GRE_ENABLE_SHIFT;
 SET_TUNNEL_TYPE_ENABLE_BIT(reg_val, shift, eth_gre_enable);
 shift = PRS_REG_ENCAPSULATION_TYPE_EN_IP_OVER_GRE_ENABLE_SHIFT;
 SET_TUNNEL_TYPE_ENABLE_BIT(reg_val, shift, ip_gre_enable);
 qed_wr(p_hwfn, p_ptt, PRS_REG_ENCAPSULATION_TYPE_EN, reg_val);
 if (reg_val) {
  reg_val =
      qed_rd(p_hwfn, p_ptt, PRS_REG_OUTPUT_FORMAT_4_0_BB_K2);


  if (reg_val == (u32)PRS_ETH_OUTPUT_FORMAT)
   qed_wr(p_hwfn, p_ptt, PRS_REG_OUTPUT_FORMAT_4_0_BB_K2,
          (u32)PRS_ETH_TUNN_OUTPUT_FORMAT);
 }


 reg_val = qed_rd(p_hwfn, p_ptt, NIG_REG_ENC_TYPE_ENABLE);
 shift = NIG_REG_ENC_TYPE_ENABLE_ETH_OVER_GRE_ENABLE_SHIFT;
 SET_TUNNEL_TYPE_ENABLE_BIT(reg_val, shift, eth_gre_enable);
 shift = NIG_REG_ENC_TYPE_ENABLE_IP_OVER_GRE_ENABLE_SHIFT;
 SET_TUNNEL_TYPE_ENABLE_BIT(reg_val, shift, ip_gre_enable);
 qed_wr(p_hwfn, p_ptt, NIG_REG_ENC_TYPE_ENABLE, reg_val);


 qed_wr(p_hwfn,
        p_ptt,
        DORQ_REG_L2_EDPM_TUNNEL_GRE_ETH_EN, eth_gre_enable ? 1 : 0);
 qed_wr(p_hwfn,
        p_ptt, DORQ_REG_L2_EDPM_TUNNEL_GRE_IP_EN, ip_gre_enable ? 1 : 0);
}
