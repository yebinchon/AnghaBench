
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_mci_profile {int num_a2dp; int num_sco; } ;
struct ath_btcoex {scalar_t__ stomp_audio; struct ath_mci_profile mci; } ;
struct ath_softc {struct ath_btcoex btcoex; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int avgbrssi; } ;
struct ath_hw {TYPE_1__ stats; } ;



__attribute__((used)) static void ath9k_mci_stomp_audio(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_btcoex *btcoex = &sc->btcoex;
 struct ath_mci_profile *mci = &btcoex->mci;

 if (!mci->num_sco && !mci->num_a2dp)
  return;

 if (ah->stats.avgbrssi > 25) {
  btcoex->stomp_audio = 0;
  return;
 }

 btcoex->stomp_audio++;
}
