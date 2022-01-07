
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath_vif {int av_bslot; int tsf_adjust; } ;
struct TYPE_4__ {TYPE_1__** bslot; } ;
struct ath_softc {TYPE_2__ beacon; int sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int beacon_interval; } ;
typedef int s64 ;
struct TYPE_3__ {scalar_t__ drv_priv; } ;


 int ATH_BCBUF ;
 int CONFIG ;
 int TU_TO_USEC (int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,long long,int) ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void ath9k_set_tsfadjust(struct ath_softc *sc,
    struct ath_beacon_config *cur_conf)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 s64 tsfadjust;
 int slot;

 for (slot = 0; slot < ATH_BCBUF; slot++) {
  struct ath_vif *avp;

  if (!sc->beacon.bslot[slot])
   continue;

  avp = (void *)sc->beacon.bslot[slot]->drv_priv;






  tsfadjust = cur_conf->beacon_interval * avp->av_bslot;
  tsfadjust = -TU_TO_USEC(tsfadjust) / ATH_BCBUF;
  avp->tsf_adjust = cpu_to_le64(tsfadjust);

  ath_dbg(common, CONFIG, "tsfadjust is: %lld for bslot: %d\n",
   (signed long long)tsfadjust, avp->av_bslot);
 }
}
