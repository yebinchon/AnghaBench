
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;


 int AR_PHY_65NM_CH0_RXTX2 ;
 int AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK ;
 int AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S ;
 int AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S ;
 int AR_PHY_65NM_CH0_SYNTH12 ;
 int AR_PHY_65NM_CH0_SYNTH12_VREFMUL3 ;
 int AR_PHY_65NM_CH1_RXTX2 ;
 int AR_PHY_65NM_CH2_RXTX2 ;
 scalar_t__ AR_SREV_9300 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW (struct ath_hw*,int ,int,int) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ar9003_doubler_fix(struct ath_hw *ah)
{
 if (AR_SREV_9300(ah) || AR_SREV_9580(ah) || AR_SREV_9550(ah)) {
  REG_RMW(ah, AR_PHY_65NM_CH0_RXTX2,
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, 0);
  REG_RMW(ah, AR_PHY_65NM_CH1_RXTX2,
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, 0);
  REG_RMW(ah, AR_PHY_65NM_CH2_RXTX2,
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S, 0);

  udelay(200);

  REG_CLR_BIT(ah, AR_PHY_65NM_CH0_RXTX2,
       AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK);
  REG_CLR_BIT(ah, AR_PHY_65NM_CH1_RXTX2,
       AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK);
  REG_CLR_BIT(ah, AR_PHY_65NM_CH2_RXTX2,
       AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK);

  udelay(1);

  REG_RMW_FIELD(ah, AR_PHY_65NM_CH0_RXTX2,
         AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, 1);
  REG_RMW_FIELD(ah, AR_PHY_65NM_CH1_RXTX2,
         AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, 1);
  REG_RMW_FIELD(ah, AR_PHY_65NM_CH2_RXTX2,
         AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK, 1);

  udelay(200);

  REG_RMW_FIELD(ah, AR_PHY_65NM_CH0_SYNTH12,
         AR_PHY_65NM_CH0_SYNTH12_VREFMUL3, 0xf);

  REG_RMW(ah, AR_PHY_65NM_CH0_RXTX2, 0,
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S);
  REG_RMW(ah, AR_PHY_65NM_CH1_RXTX2, 0,
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S);
  REG_RMW(ah, AR_PHY_65NM_CH2_RXTX2, 0,
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHON_MASK_S |
   1 << AR_PHY_65NM_CH0_RXTX2_SYNTHOVR_MASK_S);
 }
}
