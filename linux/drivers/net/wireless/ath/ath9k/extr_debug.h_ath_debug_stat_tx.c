
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int dummy; } ;
struct ath_tx_status {int dummy; } ;
struct ath_softc {int dummy; } ;
struct ath_buf {int dummy; } ;



__attribute__((used)) static inline void ath_debug_stat_tx(struct ath_softc *sc,
         struct ath_buf *bf,
         struct ath_tx_status *ts,
         struct ath_txq *txq,
         unsigned int flags)
{
}
