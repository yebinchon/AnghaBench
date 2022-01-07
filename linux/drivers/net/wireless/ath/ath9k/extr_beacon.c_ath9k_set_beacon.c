
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath_softc {TYPE_2__* sc_ah; TYPE_1__* cur_chan; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int dummy; } ;
struct TYPE_5__ {int opmode; } ;
struct TYPE_4__ {struct ath_beacon_config beacon; } ;


 int CONFIG ;




 int ath9k_beacon_config_adhoc (struct ath_softc*,struct ath_beacon_config*) ;
 int ath9k_beacon_config_ap (struct ath_softc*,struct ath_beacon_config*) ;
 int ath9k_beacon_config_sta (TYPE_2__*,struct ath_beacon_config*) ;
 struct ath_common* ath9k_hw_common (TYPE_2__*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;

void ath9k_set_beacon(struct ath_softc *sc)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_beacon_config *cur_conf = &sc->cur_chan->beacon;

 switch (sc->sc_ah->opmode) {
 case 130:
 case 129:
  ath9k_beacon_config_ap(sc, cur_conf);
  break;
 case 131:
  ath9k_beacon_config_adhoc(sc, cur_conf);
  break;
 case 128:
  ath9k_beacon_config_sta(sc->sc_ah, cur_conf);
  break;
 default:
  ath_dbg(common, CONFIG, "Unsupported beaconing mode\n");
  return;
 }
}
