
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;
struct ath_rxbuf {int dummy; } ;
struct ath_rx_status {int dummy; } ;
typedef enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;


 scalar_t__ ath_edma_get_buffers (struct ath_softc*,int,struct ath_rx_status*,struct ath_rxbuf**) ;

__attribute__((used)) static struct ath_rxbuf *ath_edma_get_next_rx_buf(struct ath_softc *sc,
      struct ath_rx_status *rs,
      enum ath9k_rx_qtype qtype)
{
 struct ath_rxbuf *bf = ((void*)0);

 while (ath_edma_get_buffers(sc, qtype, rs, &bf)) {
  if (!bf)
   continue;

  return bf;
 }
 return ((void*)0);
}
