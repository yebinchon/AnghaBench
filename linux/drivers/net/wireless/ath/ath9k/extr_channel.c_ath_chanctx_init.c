
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_supported_band {struct ieee80211_channel* channels; int n_channels; } ;
struct ieee80211_channel {int dummy; } ;
struct ath_softc {struct ath_chanctx* chanctx; int sc_ah; } ;
struct ath_common {struct ieee80211_supported_band* sbands; } ;
struct ath_chanctx {int flush_timeout; TYPE_1__* acq; int txpower; int vifs; int chandef; } ;
struct TYPE_2__ {int lock; int acq_old; int acq_new; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ATH9K_NUM_CHANCTX ;
 int ATH_TXPOWER_MAX ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int NL80211_CHAN_HT20 ;
 struct ath_common* ath9k_hw_common (int ) ;
 int cfg80211_chandef_create (int *,struct ieee80211_channel*,int ) ;
 int spin_lock_init (int *) ;

void ath_chanctx_init(struct ath_softc *sc)
{
 struct ath_chanctx *ctx;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ieee80211_supported_band *sband;
 struct ieee80211_channel *chan;
 int i, j;

 sband = &common->sbands[NL80211_BAND_2GHZ];
 if (!sband->n_channels)
  sband = &common->sbands[NL80211_BAND_5GHZ];

 chan = &sband->channels[0];
 for (i = 0; i < ATH9K_NUM_CHANCTX; i++) {
  ctx = &sc->chanctx[i];
  cfg80211_chandef_create(&ctx->chandef, chan, NL80211_CHAN_HT20);
  INIT_LIST_HEAD(&ctx->vifs);
  ctx->txpower = ATH_TXPOWER_MAX;
  ctx->flush_timeout = HZ / 5;
  for (j = 0; j < ARRAY_SIZE(ctx->acq); j++) {
   INIT_LIST_HEAD(&ctx->acq[j].acq_new);
   INIT_LIST_HEAD(&ctx->acq[j].acq_old);
   spin_lock_init(&ctx->acq[j].lock);
  }
 }
}
