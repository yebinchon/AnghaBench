
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int wiphy; struct ath_softc* priv; } ;
struct ath_softc {int dummy; } ;


 int ath_is_rfkill_set (struct ath_softc*) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

void ath9k_rfkill_poll_state(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;
 bool blocked = !!ath_is_rfkill_set(sc);

 wiphy_rfkill_set_hw_state(hw->wiphy, blocked);
}
