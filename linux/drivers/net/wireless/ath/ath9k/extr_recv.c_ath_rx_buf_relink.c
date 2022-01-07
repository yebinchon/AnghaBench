
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ath_rxbuf* buf_hold; } ;
struct ath_softc {TYPE_1__ rx; } ;
struct ath_rxbuf {int dummy; } ;


 int ath_rx_buf_link (struct ath_softc*,struct ath_rxbuf*,int) ;

__attribute__((used)) static void ath_rx_buf_relink(struct ath_softc *sc, struct ath_rxbuf *bf,
         bool flush)
{
 if (sc->rx.buf_hold)
  ath_rx_buf_link(sc, sc->rx.buf_hold, flush);

 sc->rx.buf_hold = bf;
}
