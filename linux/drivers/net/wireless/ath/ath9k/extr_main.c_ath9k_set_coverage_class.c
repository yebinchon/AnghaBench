
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int mutex; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int enabled; } ;
struct ath_hw {TYPE_1__ dynack; scalar_t__ coverage_class; } ;
typedef scalar_t__ s16 ;


 int CONFIG_ATH9K_TX99 ;
 scalar_t__ IS_ENABLED (int ) ;
 int ath9k_enable_dynack (struct ath_softc*) ;
 int ath9k_hw_init_global_settings (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int ) ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath_calcrxfilter (struct ath_softc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_set_coverage_class(struct ieee80211_hw *hw,
         s16 coverage_class)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;

 if (IS_ENABLED(CONFIG_ATH9K_TX99))
  return;

 mutex_lock(&sc->mutex);

 if (coverage_class >= 0) {
  ah->coverage_class = coverage_class;
  if (ah->dynack.enabled) {
   u32 rfilt;

   ah->dynack.enabled = 0;
   rfilt = ath_calcrxfilter(sc);
   ath9k_hw_setrxfilter(ah, rfilt);
  }
  ath9k_ps_wakeup(sc);
  ath9k_hw_init_global_settings(ah);
  ath9k_ps_restore(sc);
 } else if (!ah->dynack.enabled) {
  ath9k_enable_dynack(sc);
 }

 mutex_unlock(&sc->mutex);
}
