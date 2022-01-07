
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * rxlink; } ;
struct ath_softc {struct ath_hw* sc_ah; TYPE_2__ rx; } ;
struct TYPE_3__ {int hw_caps; } ;
struct ath_hw {int ah_flags; TYPE_1__ caps; } ;


 int AH_UNPLUGGED ;
 int ATH9K_HW_CAP_EDMA ;
 int RESET ;
 int RESET_RX_DMA_ERROR ;
 int RESET_STAT_INC (struct ath_softc*,int ) ;
 int ath9k_hw_abortpcurecv (struct ath_hw*) ;
 int ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_setrxfilter (struct ath_hw*,int ) ;
 int ath9k_hw_stopdmarecv (struct ath_hw*,int*) ;
 int ath_dbg (int ,int ,char*) ;
 int ath_edma_stop_recv (struct ath_softc*) ;
 int ath_flushrecv (struct ath_softc*) ;
 scalar_t__ unlikely (int) ;

bool ath_stoprecv(struct ath_softc *sc)
{
 struct ath_hw *ah = sc->sc_ah;
 bool stopped, reset = 0;

 ath9k_hw_abortpcurecv(ah);
 ath9k_hw_setrxfilter(ah, 0);
 stopped = ath9k_hw_stopdmarecv(ah, &reset);

 ath_flushrecv(sc);

 if (sc->sc_ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
  ath_edma_stop_recv(sc);
 else
  sc->rx.rxlink = ((void*)0);

 if (!(ah->ah_flags & AH_UNPLUGGED) &&
     unlikely(!stopped)) {
  ath_dbg(ath9k_hw_common(sc->sc_ah), RESET,
   "Failed to stop Rx DMA\n");
  RESET_STAT_INC(sc, RESET_RX_DMA_ERROR);
 }
 return stopped && !reset;
}
