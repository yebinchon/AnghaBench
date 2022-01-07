
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_spec_scan {int count; int period; int fft_period; scalar_t__ endless; scalar_t__ short_repeat; int enabled; } ;
struct ath_hw {int dummy; } ;


 int AR_PHY_RADAR_0 ;
 int AR_PHY_RADAR_0_FFT_ENA ;
 int AR_PHY_SPECTRAL_SCAN ;
 int AR_PHY_SPECTRAL_SCAN_COUNT ;
 int AR_PHY_SPECTRAL_SCAN_COUNT_KIWI ;
 int AR_PHY_SPECTRAL_SCAN_ENABLE ;
 int AR_PHY_SPECTRAL_SCAN_FFT_PERIOD ;
 int AR_PHY_SPECTRAL_SCAN_PERIOD ;
 int AR_PHY_SPECTRAL_SCAN_PHYERR_MASK_SELECT ;
 int AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT ;
 int AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT_KIWI ;
 scalar_t__ AR_SREV_9280 (struct ath_hw*) ;
 int REG_CLR_BIT (struct ath_hw*,int ,int ) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;

__attribute__((used)) static void ar9002_hw_spectral_scan_config(struct ath_hw *ah,
        struct ath_spec_scan *param)
{
 u32 repeat_bit;
 u8 count;

 if (!param->enabled) {
  REG_CLR_BIT(ah, AR_PHY_SPECTRAL_SCAN,
       AR_PHY_SPECTRAL_SCAN_ENABLE);
  return;
 }
 REG_SET_BIT(ah, AR_PHY_RADAR_0, AR_PHY_RADAR_0_FFT_ENA);
 REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN, AR_PHY_SPECTRAL_SCAN_ENABLE);

 if (AR_SREV_9280(ah))
  repeat_bit = AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT;
 else
  repeat_bit = AR_PHY_SPECTRAL_SCAN_SHORT_REPEAT_KIWI;

 if (param->short_repeat)
  REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN, repeat_bit);
 else
  REG_CLR_BIT(ah, AR_PHY_SPECTRAL_SCAN, repeat_bit);





 count = param->count;
 if (param->endless) {
  if (AR_SREV_9280(ah))
   count = 0x80;
  else
   count = 0;
 } else if (count & 0x80)
  count = 0x7f;
 else if (!count)
  count = 1;

 if (AR_SREV_9280(ah)) {
  REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
         AR_PHY_SPECTRAL_SCAN_COUNT, count);
 } else {
  REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
         AR_PHY_SPECTRAL_SCAN_COUNT_KIWI, count);
  REG_SET_BIT(ah, AR_PHY_SPECTRAL_SCAN,
       AR_PHY_SPECTRAL_SCAN_PHYERR_MASK_SELECT);
 }

 REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
        AR_PHY_SPECTRAL_SCAN_PERIOD, param->period);
 REG_RMW_FIELD(ah, AR_PHY_SPECTRAL_SCAN,
        AR_PHY_SPECTRAL_SCAN_FFT_PERIOD, param->fft_period);

 return;
}
