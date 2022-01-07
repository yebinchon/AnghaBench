
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int tx99_state; struct ath_hw* sc_ah; int * tx99_skb; int hw; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;


 int XMIT ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_enable_interrupts (struct ath_hw*) ;
 int ath9k_hw_set_interrupts (struct ath_hw*) ;
 int ath9k_hw_tx99_stop (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*) ;
 int ath_drain_all_txq (struct ath_softc*) ;
 int ath_startrecv (struct ath_softc*) ;
 int ieee80211_wake_queues (int ) ;
 int kfree_skb (int *) ;

__attribute__((used)) static void ath9k_tx99_stop(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 struct ath_common *common = ath9k_hw_common(ah);

 ath_drain_all_txq(sc);
 ath_startrecv(sc);

 ath9k_hw_set_interrupts(ah);
 ath9k_hw_enable_interrupts(ah);

 ieee80211_wake_queues(sc->hw);

 kfree_skb(sc->tx99_skb);
 sc->tx99_skb = ((void*)0);
 sc->tx99_state = 0;

 ath9k_hw_tx99_stop(sc->sc_ah);
 ath_dbg(common, XMIT, "TX99 stopped\n");
}
