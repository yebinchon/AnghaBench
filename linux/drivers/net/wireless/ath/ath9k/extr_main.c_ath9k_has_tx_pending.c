
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * txq; } ;
struct ath_softc {TYPE_1__ tx; } ;


 int ATH9K_NUM_TX_QUEUES ;
 int ATH_TXQ_SETUP (struct ath_softc*,int) ;
 int ath9k_has_pending_frames (struct ath_softc*,int *,int) ;

__attribute__((used)) static bool ath9k_has_tx_pending(struct ath_softc *sc,
     bool sw_pending)
{
 int i, npend = 0;

 for (i = 0; i < ATH9K_NUM_TX_QUEUES; i++) {
  if (!ATH_TXQ_SETUP(sc, i))
   continue;

  npend = ath9k_has_pending_frames(sc, &sc->tx.txq[i],
       sw_pending);
  if (npend)
   break;
 }

 return !!npend;
}
