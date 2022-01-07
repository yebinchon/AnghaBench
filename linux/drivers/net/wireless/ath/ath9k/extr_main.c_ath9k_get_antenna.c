
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int ant_rx; int ant_tx; } ;



__attribute__((used)) static int ath9k_get_antenna(struct ieee80211_hw *hw, u32 *tx_ant, u32 *rx_ant)
{
 struct ath_softc *sc = hw->priv;

 *tx_ant = sc->ant_tx;
 *rx_ant = sc->ant_rx;
 return 0;
}
