
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_lock; } ;
struct ath_softc {int dummy; } ;


 int spin_lock_bh (int *) ;

__attribute__((used)) static inline void ath_txq_lock(struct ath_softc *sc, struct ath_txq *txq)
{
 spin_lock_bh(&txq->axq_lock);
}
