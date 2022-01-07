
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; } ;
struct ath9k_htc_priv {struct ieee80211_hw* hw; } ;


 int ath9k_deinit_leds (struct ath9k_htc_priv*) ;
 int ath9k_deinit_priv (struct ath9k_htc_priv*) ;
 int ath9k_htc_deinit_debug (struct ath9k_htc_priv*) ;
 int ath9k_rx_cleanup (struct ath9k_htc_priv*) ;
 int ath9k_tx_cleanup (struct ath9k_htc_priv*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int wiphy_rfkill_stop_polling (int ) ;

__attribute__((used)) static void ath9k_deinit_device(struct ath9k_htc_priv *priv)
{
 struct ieee80211_hw *hw = priv->hw;

 wiphy_rfkill_stop_polling(hw->wiphy);
 ath9k_deinit_leds(priv);
 ath9k_htc_deinit_debug(priv);
 ieee80211_unregister_hw(hw);
 ath9k_rx_cleanup(priv);
 ath9k_tx_cleanup(priv);
 ath9k_deinit_priv(priv);
}
