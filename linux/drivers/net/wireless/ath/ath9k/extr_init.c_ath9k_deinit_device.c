
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; } ;
struct ath_softc {struct ieee80211_hw* hw; } ;


 int ath9k_deinit_debug (struct ath_softc*) ;
 int ath9k_deinit_softc (struct ath_softc*) ;
 int ath9k_deinit_wow (struct ieee80211_hw*) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_deinit_leds (struct ath_softc*) ;
 int ath_rx_cleanup (struct ath_softc*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int wiphy_rfkill_stop_polling (int ) ;

void ath9k_deinit_device(struct ath_softc *sc)
{
 struct ieee80211_hw *hw = sc->hw;

 ath9k_ps_wakeup(sc);

 wiphy_rfkill_stop_polling(sc->hw->wiphy);
 ath_deinit_leds(sc);

 ath9k_ps_restore(sc);

 ath9k_deinit_debug(sc);
 ath9k_deinit_wow(hw);
 ieee80211_unregister_hw(hw);
 ath_rx_cleanup(sc);
 ath9k_deinit_softc(sc);
}
