
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_hw {int curchan; } ;


 int CCK_SIFS_TIME ;
 scalar_t__ IS_CHAN_HALF_RATE (int ) ;
 scalar_t__ IS_CHAN_QUARTER_RATE (int ) ;
 int OFDM_SIFS_TIME ;
 int OFDM_SIFS_TIME_HALF ;
 int OFDM_SIFS_TIME_QUARTER ;
 int WLAN_RC_PHY_OFDM ;

__attribute__((used)) static inline u32 ath_dynack_get_sifs(struct ath_hw *ah, int phy)
{
 u32 sifs = CCK_SIFS_TIME;

 if (phy == WLAN_RC_PHY_OFDM) {
  if (IS_CHAN_QUARTER_RATE(ah->curchan))
   sifs = OFDM_SIFS_TIME_QUARTER;
  else if (IS_CHAN_HALF_RATE(ah->curchan))
   sifs = OFDM_SIFS_TIME_HALF;
  else
   sifs = OFDM_SIFS_TIME;
 }
 return sifs;
}
