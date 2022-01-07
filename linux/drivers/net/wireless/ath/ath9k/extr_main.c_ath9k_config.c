
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_conf {int flags; int chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct ath_softc* priv; } ;
struct ath_softc {int ps_idle; int mutex; struct ath_hw* sc_ah; int sc_pm_lock; struct ath_chanctx* cur_chan; } ;
struct ath_hw {int is_monitoring; } ;
struct ath_common {int dummy; } ;
struct ath_chanctx {int offchannel; int chandef; } ;


 int CONFIG ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_CHANGE_MONITOR ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_IDLE ;
 int IEEE80211_CONF_MONITOR ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int IEEE80211_CONF_PS ;
 int ath9k_disable_ps (struct ath_softc*) ;
 int ath9k_enable_ps (struct ath_softc*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_is_chanctx_enabled () ;
 int ath9k_ps_restore (struct ath_softc*) ;
 int ath9k_ps_wakeup (struct ath_softc*) ;
 int ath9k_start_btcoex (struct ath_softc*) ;
 int ath9k_stop_btcoex (struct ath_softc*) ;
 int ath_cancel_work (struct ath_softc*) ;
 int ath_chanctx_set_channel (struct ath_softc*,struct ath_chanctx*,int *) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ath9k_config(struct ieee80211_hw *hw, u32 changed)
{
 struct ath_softc *sc = hw->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ieee80211_conf *conf = &hw->conf;
 struct ath_chanctx *ctx = sc->cur_chan;

 ath9k_ps_wakeup(sc);
 mutex_lock(&sc->mutex);

 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  sc->ps_idle = !!(conf->flags & IEEE80211_CONF_IDLE);
  if (sc->ps_idle) {
   ath_cancel_work(sc);
   ath9k_stop_btcoex(sc);
  } else {
   ath9k_start_btcoex(sc);




   ath_chanctx_set_channel(sc, ctx, &ctx->chandef);
  }
 }







 if (changed & IEEE80211_CONF_CHANGE_PS) {
  unsigned long flags;
  spin_lock_irqsave(&sc->sc_pm_lock, flags);
  if (conf->flags & IEEE80211_CONF_PS)
   ath9k_enable_ps(sc);
  else
   ath9k_disable_ps(sc);
  spin_unlock_irqrestore(&sc->sc_pm_lock, flags);
 }

 if (changed & IEEE80211_CONF_CHANGE_MONITOR) {
  if (conf->flags & IEEE80211_CONF_MONITOR) {
   ath_dbg(common, CONFIG, "Monitor mode is enabled\n");
   sc->sc_ah->is_monitoring = 1;
  } else {
   ath_dbg(common, CONFIG, "Monitor mode is disabled\n");
   sc->sc_ah->is_monitoring = 0;
  }
 }

 if (!ath9k_is_chanctx_enabled() && (changed & IEEE80211_CONF_CHANGE_CHANNEL)) {
  ctx->offchannel = !!(conf->flags & IEEE80211_CONF_OFFCHANNEL);
  ath_chanctx_set_channel(sc, ctx, &hw->conf.chandef);
 }

 mutex_unlock(&sc->mutex);
 ath9k_ps_restore(sc);

 return 0;
}
