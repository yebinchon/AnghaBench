
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_beacon_config {int intval; int nexttbtt; } ;


 int ATH_BCBUF ;
 int ath9k_beacon_init (struct ath_softc*,int ,int ) ;
 int ath9k_cmn_beacon_config_ap (struct ath_hw*,struct ath_beacon_config*,int ) ;

__attribute__((used)) static void ath9k_beacon_config_ap(struct ath_softc *sc,
       struct ath_beacon_config *conf)
{
 struct ath_hw *ah = sc->sc_ah;

 ath9k_cmn_beacon_config_ap(ah, conf, ATH_BCBUF);
 ath9k_beacon_init(sc, conf->nexttbtt, conf->intval);
}
