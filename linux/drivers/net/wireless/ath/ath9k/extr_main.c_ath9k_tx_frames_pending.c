
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int dummy; } ;


 int ath9k_has_tx_pending (struct ath_softc*,int) ;

__attribute__((used)) static bool ath9k_tx_frames_pending(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;

 return ath9k_has_tx_pending(sc, 1);
}
