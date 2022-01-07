
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int supp_cals; } ;
struct ath9k_channel {int dummy; } ;
typedef enum ar9002_cal_types { ____Placeholder_ar9002_cal_types } ar9002_cal_types ;





 int IS_CHAN_2GHZ (struct ath9k_channel*) ;
 int IS_CHAN_A_FAST_CLOCK (struct ath_hw*,struct ath9k_channel*) ;
 int IS_CHAN_HT20 (struct ath9k_channel*) ;

__attribute__((used)) static bool ar9002_hw_is_cal_supported(struct ath_hw *ah,
    struct ath9k_channel *chan,
    enum ar9002_cal_types cal_type)
{
 bool supported = 0;
 switch (ah->supp_cals & cal_type) {
 case 128:
  supported = 1;
  break;
 case 129:
 case 130:

  if (!((IS_CHAN_2GHZ(chan) || IS_CHAN_A_FAST_CLOCK(ah, chan)) &&
        IS_CHAN_HT20(chan)))
   supported = 1;
  break;
 }
 return supported;
}
