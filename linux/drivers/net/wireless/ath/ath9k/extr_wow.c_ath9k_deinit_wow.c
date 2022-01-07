
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int driver_data; int dev; scalar_t__ force_wow; } ;


 int ATH9K_PCI_WOW ;
 int device_init_wakeup (int ,int ) ;

void ath9k_deinit_wow(struct ieee80211_hw *hw)
{
 struct ath_softc *sc = hw->priv;

 if ((sc->driver_data & ATH9K_PCI_WOW) || sc->force_wow)
  device_init_wakeup(sc->dev, 0);
}
