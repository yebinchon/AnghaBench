
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {scalar_t__ is_clk_25mhz; } ;
struct ath9k_channel {int dummy; } ;


 int AR_CH0_BB_DPLL1 ;
 int AR_CH0_BB_DPLL1_NFRAC ;
 int AR_CH0_BB_DPLL1_NINI ;
 int AR_CH0_BB_DPLL1_REFDIV ;
 int AR_CH0_BB_DPLL2 ;
 int AR_CH0_BB_DPLL2_EN_NEGTRIG ;
 int AR_CH0_BB_DPLL2_LOCAL_PLL ;
 int AR_CH0_BB_DPLL2_OUTDIV ;
 int AR_CH0_BB_DPLL2_PLL_PWD ;
 int AR_CH0_BB_DPLL3 ;
 int AR_CH0_BB_DPLL3_PHASE_SHIFT ;
 int AR_CH0_DDR_DPLL2 ;
 int AR_CH0_DDR_DPLL3 ;
 int AR_CH0_DPLL2_KD ;
 int AR_CH0_DPLL2_KI ;
 int AR_CH0_DPLL3_PHASE_SHIFT ;
 int AR_PHY_PLL_CONTROL ;
 int AR_PHY_PLL_MODE ;
 int AR_RTC_9300_PLL_BYPASS ;
 int AR_RTC_9300_SOC_PLL_BYPASS ;
 int AR_RTC_FORCE_DERIVED_CLK ;
 int AR_RTC_PLL_CONTROL ;
 int AR_RTC_PLL_CONTROL2 ;
 int AR_RTC_SLEEP_CLK ;
 scalar_t__ AR_SREV_9271 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9330 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9485 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9531 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9550 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9561 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9565 (struct ath_hw*) ;
 int REG_READ (struct ath_hw*,int) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int,int) ;
 int REG_WRITE (struct ath_hw*,int,int) ;
 int RTC_PLL_SETTLE_DELAY ;
 int ath9k_hw_compute_pll_control (struct ath_hw*,struct ath9k_channel*) ;
 int udelay (int) ;

__attribute__((used)) static void ath9k_hw_init_pll(struct ath_hw *ah,
         struct ath9k_channel *chan)
{
 u32 pll;

 pll = ath9k_hw_compute_pll_control(ah, chan);

 if (AR_SREV_9485(ah) || AR_SREV_9565(ah)) {

  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_BB_DPLL2_PLL_PWD, 0x1);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_DPLL2_KD, 0x40);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_DPLL2_KI, 0x4);

  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL1,
         AR_CH0_BB_DPLL1_REFDIV, 0x5);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL1,
         AR_CH0_BB_DPLL1_NINI, 0x58);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL1,
         AR_CH0_BB_DPLL1_NFRAC, 0x0);

  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_BB_DPLL2_OUTDIV, 0x1);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_BB_DPLL2_LOCAL_PLL, 0x1);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_BB_DPLL2_EN_NEGTRIG, 0x1);


  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL3,
         AR_CH0_BB_DPLL3_PHASE_SHIFT, 0x6);

  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2,
         AR_CH0_BB_DPLL2_PLL_PWD, 0x0);
  udelay(1000);
 } else if (AR_SREV_9330(ah)) {
  u32 ddr_dpll2, pll_control2, kd;

  if (ah->is_clk_25mhz) {
   ddr_dpll2 = 0x18e82f01;
   pll_control2 = 0xe04a3d;
   kd = 0x1d;
  } else {
   ddr_dpll2 = 0x19e82f01;
   pll_control2 = 0x886666;
   kd = 0x3d;
  }


  REG_WRITE(ah, AR_CH0_DDR_DPLL2, ddr_dpll2);


  REG_RMW_FIELD(ah, AR_CH0_DDR_DPLL3,
         AR_CH0_DPLL3_PHASE_SHIFT, 0x1);

  REG_WRITE(ah, AR_RTC_PLL_CONTROL,
     pll | AR_RTC_9300_PLL_BYPASS);
  udelay(1000);


  REG_WRITE(ah, AR_RTC_PLL_CONTROL2, pll_control2);


  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2, AR_CH0_DPLL2_KD, kd);
  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL2, AR_CH0_DPLL2_KI, 0x06);


  REG_RMW_FIELD(ah, AR_CH0_BB_DPLL3,
         AR_CH0_BB_DPLL3_PHASE_SHIFT, 0x1);
 } else if (AR_SREV_9340(ah) || AR_SREV_9550(ah) || AR_SREV_9531(ah) ||
     AR_SREV_9561(ah)) {
  u32 regval, pll2_divint, pll2_divfrac, refdiv;

  REG_WRITE(ah, AR_RTC_PLL_CONTROL,
     pll | AR_RTC_9300_SOC_PLL_BYPASS);
  udelay(1000);

  REG_SET_BIT(ah, AR_PHY_PLL_MODE, 0x1 << 16);
  udelay(100);

  if (ah->is_clk_25mhz) {
   if (AR_SREV_9531(ah) || AR_SREV_9561(ah)) {
    pll2_divint = 0x1c;
    pll2_divfrac = 0xa3d2;
    refdiv = 1;
   } else {
    pll2_divint = 0x54;
    pll2_divfrac = 0x1eb85;
    refdiv = 3;
   }
  } else {
   if (AR_SREV_9340(ah)) {
    pll2_divint = 88;
    pll2_divfrac = 0;
    refdiv = 5;
   } else {
    pll2_divint = 0x11;
    pll2_divfrac = (AR_SREV_9531(ah) ||
      AR_SREV_9561(ah)) ?
      0x26665 : 0x26666;
    refdiv = 1;
   }
  }

  regval = REG_READ(ah, AR_PHY_PLL_MODE);
  if (AR_SREV_9531(ah) || AR_SREV_9561(ah))
   regval |= (0x1 << 22);
  else
   regval |= (0x1 << 16);
  REG_WRITE(ah, AR_PHY_PLL_MODE, regval);
  udelay(100);

  REG_WRITE(ah, AR_PHY_PLL_CONTROL, (refdiv << 27) |
     (pll2_divint << 18) | pll2_divfrac);
  udelay(100);

  regval = REG_READ(ah, AR_PHY_PLL_MODE);
  if (AR_SREV_9340(ah))
   regval = (regval & 0x80071fff) |
    (0x1 << 30) |
    (0x1 << 13) |
    (0x4 << 26) |
    (0x18 << 19);
  else if (AR_SREV_9531(ah) || AR_SREV_9561(ah)) {
   regval = (regval & 0x01c00fff) |
    (0x1 << 31) |
    (0x2 << 29) |
    (0xa << 25) |
    (0x1 << 19);

   if (AR_SREV_9531(ah))
    regval |= (0x6 << 12);
  } else
   regval = (regval & 0x80071fff) |
    (0x3 << 30) |
    (0x1 << 13) |
    (0x4 << 26) |
    (0x60 << 19);
  REG_WRITE(ah, AR_PHY_PLL_MODE, regval);

  if (AR_SREV_9531(ah) || AR_SREV_9561(ah))
   REG_WRITE(ah, AR_PHY_PLL_MODE,
      REG_READ(ah, AR_PHY_PLL_MODE) & 0xffbfffff);
  else
   REG_WRITE(ah, AR_PHY_PLL_MODE,
      REG_READ(ah, AR_PHY_PLL_MODE) & 0xfffeffff);

  udelay(1000);
 }

 if (AR_SREV_9565(ah))
  pll |= 0x40000;
 REG_WRITE(ah, AR_RTC_PLL_CONTROL, pll);

 if (AR_SREV_9485(ah) || AR_SREV_9340(ah) || AR_SREV_9330(ah) ||
     AR_SREV_9550(ah))
  udelay(1000);


 if (AR_SREV_9271(ah)) {
  udelay(500);
  REG_WRITE(ah, 0x50040, 0x304);
 }

 udelay(RTC_PLL_SETTLE_DELAY);

 REG_WRITE(ah, AR_RTC_SLEEP_CLK, AR_RTC_FORCE_DERIVED_CLK);
}
