
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;


 int AR9300_11NA_HT_DS_SHIFT ;
 int AR9300_11NA_HT_SS_SHIFT ;
 int AR9300_11NA_HT_TS_SHIFT ;
 int AR9300_11NA_OFDM_SHIFT ;
 int AR9300_11NG_HT_DS_SHIFT ;
 int AR9300_11NG_HT_SS_SHIFT ;
 int AR9300_11NG_HT_TS_SHIFT ;
 int AR9300_11NG_OFDM_SHIFT ;
 scalar_t__ IS_CHAN_5GHZ (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT20 (struct ath9k_channel*) ;
 scalar_t__ IS_CHAN_HT40 (struct ath9k_channel*) ;
 int ar9003_hw_init_txpower_cck (struct ath_hw*,int *) ;
 int ar9003_hw_init_txpower_ht (struct ath_hw*,int *,int ,int ,int ,scalar_t__) ;
 int ar9003_hw_init_txpower_ofdm (struct ath_hw*,int *,int ) ;
 int ar9003_hw_init_txpower_stbc (struct ath_hw*,int ,int ,int ) ;

void ar9003_hw_init_rate_txpower(struct ath_hw *ah, u8 *rate_array,
     struct ath9k_channel *chan)
{
 if (IS_CHAN_5GHZ(chan)) {
  ar9003_hw_init_txpower_ofdm(ah, rate_array,
         AR9300_11NA_OFDM_SHIFT);
  if (IS_CHAN_HT20(chan) || IS_CHAN_HT40(chan)) {
   ar9003_hw_init_txpower_ht(ah, rate_array,
        AR9300_11NA_HT_SS_SHIFT,
        AR9300_11NA_HT_DS_SHIFT,
        AR9300_11NA_HT_TS_SHIFT,
        IS_CHAN_HT40(chan));
   ar9003_hw_init_txpower_stbc(ah,
          AR9300_11NA_HT_SS_SHIFT,
          AR9300_11NA_HT_DS_SHIFT,
          AR9300_11NA_HT_TS_SHIFT);
  }
 } else {
  ar9003_hw_init_txpower_cck(ah, rate_array);
  ar9003_hw_init_txpower_ofdm(ah, rate_array,
         AR9300_11NG_OFDM_SHIFT);
  if (IS_CHAN_HT20(chan) || IS_CHAN_HT40(chan)) {
   ar9003_hw_init_txpower_ht(ah, rate_array,
        AR9300_11NG_HT_SS_SHIFT,
        AR9300_11NG_HT_DS_SHIFT,
        AR9300_11NG_HT_TS_SHIFT,
        IS_CHAN_HT40(chan));
   ar9003_hw_init_txpower_stbc(ah,
          AR9300_11NG_HT_SS_SHIFT,
          AR9300_11NG_HT_DS_SHIFT,
          AR9300_11NG_HT_TS_SHIFT);
  }
 }
}
