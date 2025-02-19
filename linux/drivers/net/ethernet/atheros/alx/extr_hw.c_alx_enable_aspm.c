
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct alx_hw {int dummy; } ;


 int ALX_PMCTRL ;
 int ALX_PMCTRL_ASPM_FCEN ;
 int ALX_PMCTRL_HOTRST_WTEN ;
 int ALX_PMCTRL_L0S_EN ;
 int ALX_PMCTRL_L1REG_TO_DEF ;
 int ALX_PMCTRL_L1REQ_TO ;
 int ALX_PMCTRL_L1_BUFSRX_EN ;
 int ALX_PMCTRL_L1_CLKSW_EN ;
 int ALX_PMCTRL_L1_EN ;
 int ALX_PMCTRL_L1_SRDSPLL_EN ;
 int ALX_PMCTRL_L1_SRDSRX_PWD ;
 int ALX_PMCTRL_L1_SRDS_EN ;
 int ALX_PMCTRL_L1_TIMER ;
 int ALX_PMCTRL_L1_TIMER_16US ;
 int ALX_PMCTRL_LCKDET_TIMER ;
 int ALX_PMCTRL_LCKDET_TIMER_DEF ;
 int ALX_PMCTRL_RCVR_WT_1US ;
 int ALX_PMCTRL_RXL1_AFTER_L0S ;
 int ALX_PMCTRL_SADLY_EN ;
 int ALX_PMCTRL_TXL1_AFTER_L0S ;
 int ALX_SET_FIELD (int,int ,int ) ;
 int alx_hw_revision (struct alx_hw*) ;
 scalar_t__ alx_hw_with_cr (struct alx_hw*) ;
 scalar_t__ alx_is_rev_a (int ) ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;

void alx_enable_aspm(struct alx_hw *hw, bool l0s_en, bool l1_en)
{
 u32 pmctrl;
 u8 rev = alx_hw_revision(hw);

 pmctrl = alx_read_mem32(hw, ALX_PMCTRL);

 ALX_SET_FIELD(pmctrl, ALX_PMCTRL_LCKDET_TIMER,
        ALX_PMCTRL_LCKDET_TIMER_DEF);
 pmctrl |= ALX_PMCTRL_RCVR_WT_1US |
    ALX_PMCTRL_L1_CLKSW_EN |
    ALX_PMCTRL_L1_SRDSRX_PWD;
 ALX_SET_FIELD(pmctrl, ALX_PMCTRL_L1REQ_TO, ALX_PMCTRL_L1REG_TO_DEF);
 ALX_SET_FIELD(pmctrl, ALX_PMCTRL_L1_TIMER, ALX_PMCTRL_L1_TIMER_16US);
 pmctrl &= ~(ALX_PMCTRL_L1_SRDS_EN |
      ALX_PMCTRL_L1_SRDSPLL_EN |
      ALX_PMCTRL_L1_BUFSRX_EN |
      ALX_PMCTRL_SADLY_EN |
      ALX_PMCTRL_HOTRST_WTEN|
      ALX_PMCTRL_L0S_EN |
      ALX_PMCTRL_L1_EN |
      ALX_PMCTRL_ASPM_FCEN |
      ALX_PMCTRL_TXL1_AFTER_L0S |
      ALX_PMCTRL_RXL1_AFTER_L0S);
 if (alx_is_rev_a(rev) && alx_hw_with_cr(hw))
  pmctrl |= ALX_PMCTRL_L1_SRDS_EN | ALX_PMCTRL_L1_SRDSPLL_EN;

 if (l0s_en)
  pmctrl |= (ALX_PMCTRL_L0S_EN | ALX_PMCTRL_ASPM_FCEN);
 if (l1_en)
  pmctrl |= (ALX_PMCTRL_L1_EN | ALX_PMCTRL_ASPM_FCEN);

 alx_write_mem32(hw, ALX_PMCTRL, pmctrl);
}
