
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int op_flags; } ;
struct ath_beacon_config {scalar_t__ enable_beacon; int ibss_creator; int intval; int nexttbtt; } ;


 int ATH_OP_BEACONS ;
 int ath9k_beacon_init (struct ath_softc*,int ,int ) ;
 int ath9k_cmn_beacon_config_adhoc (struct ath_hw*,struct ath_beacon_config*) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_reset_beacon_status (struct ath_softc*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ath9k_beacon_config_adhoc(struct ath_softc *sc,
          struct ath_beacon_config *conf)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);

 ath9k_reset_beacon_status(sc);

 ath9k_cmn_beacon_config_adhoc(ah, conf);

 ath9k_beacon_init(sc, conf->nexttbtt, conf->intval);





 if (!conf->ibss_creator && conf->enable_beacon)
  set_bit(ATH_OP_BEACONS, &common->op_flags);
}
