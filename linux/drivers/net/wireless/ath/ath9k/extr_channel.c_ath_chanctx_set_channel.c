
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_chan_def {int dummy; } ;
struct ath_softc {int chan_lock; struct ath_chanctx* cur_chan; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath_chanctx {int chandef; } ;


 int CHAN_CTX ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_set_channel (struct ath_softc*) ;
 int memcpy (int *,struct cfg80211_chan_def*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath_chanctx_set_channel(struct ath_softc *sc, struct ath_chanctx *ctx,
        struct cfg80211_chan_def *chandef)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 bool cur_chan;

 spin_lock_bh(&sc->chan_lock);
 if (chandef)
  memcpy(&ctx->chandef, chandef, sizeof(*chandef));
 cur_chan = sc->cur_chan == ctx;
 spin_unlock_bh(&sc->chan_lock);

 if (!cur_chan) {
  ath_dbg(common, CHAN_CTX,
   "Current context differs from the new context\n");
  return;
 }

 ath_set_channel(sc);
}
