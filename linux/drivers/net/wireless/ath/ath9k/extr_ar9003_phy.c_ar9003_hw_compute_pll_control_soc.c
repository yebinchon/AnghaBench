
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR_RTC_9300_SOC_PLL_CLKSEL ;
 int AR_RTC_9300_SOC_PLL_DIV_INT ;
 int AR_RTC_9300_SOC_PLL_REFDIV ;
 scalar_t__ IS_CHAN_HALF_RATE (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (struct ath9k_channel*) ;
 int SM (int,int ) ;

__attribute__((used)) static u32 ar9003_hw_compute_pll_control_soc(struct ath_hw *ah,
          struct ath9k_channel *chan)
{
 u32 pll;

 pll = SM(0x5, AR_RTC_9300_SOC_PLL_REFDIV);

 if (chan && IS_CHAN_HALF_RATE(chan))
  pll |= SM(0x1, AR_RTC_9300_SOC_PLL_CLKSEL);
 else if (chan && IS_CHAN_QUARTER_RATE(chan))
  pll |= SM(0x2, AR_RTC_9300_SOC_PLL_CLKSEL);

 pll |= SM(0x2c, AR_RTC_9300_SOC_PLL_DIV_INT);

 return pll;
}
