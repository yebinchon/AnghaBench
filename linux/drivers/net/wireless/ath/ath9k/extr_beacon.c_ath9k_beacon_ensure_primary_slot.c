
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_vif {int av_bslot; TYPE_2__* chanctx; int tsf_adjust; } ;
struct TYPE_3__ {struct ieee80211_vif** bslot; } ;
struct ath_softc {int bcon_tasklet; int sc_ah; TYPE_2__* cur_chan; TYPE_1__ beacon; } ;
struct ath_common {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_4__ {scalar_t__ tsf_val; int tsf_ts; } ;


 int ATH_BCBUF ;
 int CONFIG ;
 scalar_t__ WARN_ON (int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 scalar_t__ ath9k_hw_get_tsf_offset (int *,int *) ;
 int ath9k_hw_settsf64 (int ,scalar_t__) ;
 int ath_dbg (struct ath_common*,int ,char*,long long) ;
 scalar_t__ le64_to_cpu (int ) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

void ath9k_beacon_ensure_primary_slot(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ieee80211_vif *vif;
 struct ath_vif *avp;
 s64 tsfadjust;
 u32 offset;
 int first_slot = ATH_BCBUF;
 int slot;

 tasklet_disable(&sc->bcon_tasklet);


 for (slot = 0; slot < ATH_BCBUF; slot++) {
  if (sc->beacon.bslot[slot]) {
   first_slot = slot;
   break;
  }
 }
 if (first_slot == 0)
  goto out;


 for (slot = 0; slot < ATH_BCBUF; slot++) {
  if (slot + first_slot < ATH_BCBUF) {
   vif = sc->beacon.bslot[slot + first_slot];
   sc->beacon.bslot[slot] = vif;

   if (vif) {
    avp = (void *)vif->drv_priv;
    avp->av_bslot = slot;
   }
  } else {
   sc->beacon.bslot[slot] = ((void*)0);
  }
 }

 vif = sc->beacon.bslot[0];
 if (WARN_ON(!vif))
  goto out;


 avp = (void *)vif->drv_priv;
 tsfadjust = le64_to_cpu(avp->tsf_adjust);

 ath_dbg(common, CONFIG,
  "Adjusting global TSF after beacon slot reassignment: %lld\n",
  (signed long long)tsfadjust);


 avp->chanctx->tsf_val += tsfadjust;
 if (sc->cur_chan == avp->chanctx) {
  offset = ath9k_hw_get_tsf_offset(&avp->chanctx->tsf_ts, ((void*)0));
  ath9k_hw_settsf64(sc->sc_ah, avp->chanctx->tsf_val + offset);
 }



out:
 tasklet_enable(&sc->bcon_tasklet);
}
