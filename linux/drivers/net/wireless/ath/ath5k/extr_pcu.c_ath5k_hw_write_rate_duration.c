
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct ieee80211_rate {int flags; int hw_value; } ;
struct ath5k_hw {TYPE_1__* sbands; scalar_t__ ah_ack_bitrate_high; } ;
struct TYPE_2__ {unsigned int n_bitrates; struct ieee80211_rate* bitrates; } ;


 scalar_t__ AR5K_RATE_DUR (int ) ;
 int AR5K_SET_SHORT_PREAMBLE ;
 int IEEE80211_RATE_SHORT_PREAMBLE ;
 size_t NL80211_BAND_2GHZ ;
 size_t* ack_rates_high ;
 int ath5k_hw_get_frame_duration (struct ath5k_hw*,size_t,int,struct ieee80211_rate*,int) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,scalar_t__) ;

__attribute__((used)) static inline void
ath5k_hw_write_rate_duration(struct ath5k_hw *ah)
{
 struct ieee80211_rate *rate;
 unsigned int i;

 u8 band = NL80211_BAND_2GHZ;


 for (i = 0; i < ah->sbands[band].n_bitrates; i++) {
  u32 reg;
  u16 tx_time;

  if (ah->ah_ack_bitrate_high)
   rate = &ah->sbands[band].bitrates[ack_rates_high[i]];

  else if (i < 4)
   rate = &ah->sbands[band].bitrates[0];

  else
   rate = &ah->sbands[band].bitrates[4];


  reg = AR5K_RATE_DUR(rate->hw_value);







  tx_time = ath5k_hw_get_frame_duration(ah, band, 10,
     rate, 0);

  ath5k_hw_reg_write(ah, tx_time, reg);

  if (!(rate->flags & IEEE80211_RATE_SHORT_PREAMBLE))
   continue;

  tx_time = ath5k_hw_get_frame_duration(ah, band, 10, rate, 1);
  ath5k_hw_reg_write(ah, tx_time,
   reg + (AR5K_SET_SHORT_PREAMBLE << 2));
 }
}
