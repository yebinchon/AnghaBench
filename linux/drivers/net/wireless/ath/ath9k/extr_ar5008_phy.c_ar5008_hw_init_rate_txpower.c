
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
typedef int int16_t ;


 int AR5008_11NA_HT_DS_SHIFT ;
 int AR5008_11NA_HT_SS_SHIFT ;
 int AR5008_11NA_OFDM_SHIFT ;
 int AR5008_11NG_HT_DS_SHIFT ;
 int AR5008_11NG_HT_SS_SHIFT ;
 int AR5008_11NG_OFDM_SHIFT ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT20 (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int ar5008_hw_init_txpower_cck (struct ath_hw*,int *) ;
 int ar5008_hw_init_txpower_ht (struct ath_hw*,int *,int ,int ,scalar_t__,int) ;
 int ar5008_hw_init_txpower_ofdm (struct ath_hw*,int *,int ) ;

void ar5008_hw_init_rate_txpower(struct ath_hw *ah, int16_t *rate_array,
     struct ath9k_channel *chan, int ht40_delta)
{
 if (IS_CHAN_5GHZ(chan)) {
  ar5008_hw_init_txpower_ofdm(ah, rate_array,
         AR5008_11NA_OFDM_SHIFT);
  if (IS_CHAN_HT20(chan) || IS_CHAN_HT40(chan)) {
   ar5008_hw_init_txpower_ht(ah, rate_array,
        AR5008_11NA_HT_SS_SHIFT,
        AR5008_11NA_HT_DS_SHIFT,
        IS_CHAN_HT40(chan),
        ht40_delta);
  }
 } else {
  ar5008_hw_init_txpower_cck(ah, rate_array);
  ar5008_hw_init_txpower_ofdm(ah, rate_array,
         AR5008_11NG_OFDM_SHIFT);
  if (IS_CHAN_HT20(chan) || IS_CHAN_HT40(chan)) {
   ar5008_hw_init_txpower_ht(ah, rate_array,
        AR5008_11NG_HT_SS_SHIFT,
        AR5008_11NG_HT_DS_SHIFT,
        IS_CHAN_HT40(chan),
        ht40_delta);
  }
 }
}
