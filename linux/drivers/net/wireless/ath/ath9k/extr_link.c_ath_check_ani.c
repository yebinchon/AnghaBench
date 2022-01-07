
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_softc {TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct ath_hw {scalar_t__ opmode; } ;
struct ath_common {int op_flags; } ;
struct ath_beacon_config {int enable_beacon; } ;
struct TYPE_2__ {struct ath_beacon_config beacon; } ;


 int ATH_OP_ANI_RUN ;
 int ATH_OP_PRIM_STA_VIF ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_start_ani (struct ath_softc*) ;
 int ath_stop_ani (struct ath_softc*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void ath_check_ani(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_beacon_config *cur_conf = &sc->cur_chan->beacon;





 if (ah->opmode == NL80211_IFTYPE_ADHOC) {
  if (!cur_conf->enable_beacon)
   goto stop_ani;
 } else if (ah->opmode == NL80211_IFTYPE_AP) {
  if (!cur_conf->enable_beacon) {




   if (!test_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags))
    goto stop_ani;
  }
 } else if (ah->opmode == NL80211_IFTYPE_STATION) {
  if (!test_bit(ATH_OP_PRIM_STA_VIF, &common->op_flags))
   goto stop_ani;
 }

 if (!test_bit(ATH_OP_ANI_RUN, &common->op_flags)) {
  set_bit(ATH_OP_ANI_RUN, &common->op_flags);
  ath_start_ani(sc);
 }

 return;

stop_ani:
 clear_bit(ATH_OP_ANI_RUN, &common->op_flags);
 ath_stop_ani(sc);
}
