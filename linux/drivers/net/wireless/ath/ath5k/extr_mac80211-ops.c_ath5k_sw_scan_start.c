
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_hw {int assoc; } ;


 int AR5K_LED_SCAN ;
 int ath5k_hw_set_ledstate (struct ath5k_hw*,int ) ;

__attribute__((used)) static void
ath5k_sw_scan_start(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      const u8 *mac_addr)
{
 struct ath5k_hw *ah = hw->priv;
 if (!ah->assoc)
  ath5k_hw_set_ledstate(ah, AR5K_LED_SCAN);
}
