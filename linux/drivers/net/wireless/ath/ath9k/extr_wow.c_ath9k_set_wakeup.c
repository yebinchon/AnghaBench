
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int mutex; int dev; int sc_ah; } ;
struct ath_common {int dummy; } ;


 int WOW ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,char*) ;
 int device_set_wakeup_enable (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ath9k_set_wakeup(struct ieee80211_hw *hw, bool enabled)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);

 mutex_lock(&sc->mutex);
 device_set_wakeup_enable(sc->dev, enabled);
 mutex_unlock(&sc->mutex);

 ath_dbg(common, WOW, "WoW wakeup source is %s\n",
  (enabled) ? "enabled" : "disabled");
}
