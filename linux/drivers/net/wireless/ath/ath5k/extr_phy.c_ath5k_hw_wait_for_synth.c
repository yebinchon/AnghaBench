
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_channel {scalar_t__ hw_value; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_bwmode; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_BWMODE_10MHZ ;
 scalar_t__ AR5K_BWMODE_5MHZ ;
 scalar_t__ AR5K_MODE_11B ;
 int AR5K_PHY_RX_DELAY ;
 int AR5K_PHY_RX_DELAY_M ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void
ath5k_hw_wait_for_synth(struct ath5k_hw *ah,
   struct ieee80211_channel *channel)
{




 if (ah->ah_version != AR5K_AR5210) {
  u32 delay;
  delay = ath5k_hw_reg_read(ah, AR5K_PHY_RX_DELAY) &
   AR5K_PHY_RX_DELAY_M;
  delay = (channel->hw_value == AR5K_MODE_11B) ?
   ((delay << 2) / 22) : (delay / 10);
  if (ah->ah_bwmode == AR5K_BWMODE_10MHZ)
   delay = delay << 1;
  if (ah->ah_bwmode == AR5K_BWMODE_5MHZ)
   delay = delay << 2;


  usleep_range(100 + delay, 100 + (2 * delay));
 } else {
  usleep_range(1000, 1500);
 }
}
