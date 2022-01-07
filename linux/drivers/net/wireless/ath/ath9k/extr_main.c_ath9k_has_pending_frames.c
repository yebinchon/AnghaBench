
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_txq {size_t mac80211_qnum; int axq_lock; scalar_t__ axq_depth; } ;
struct ath_softc {TYPE_1__* cur_chan; } ;
struct ath_acq {int acq_old; int acq_new; } ;
struct TYPE_2__ {struct ath_acq* acq; } ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool ath9k_has_pending_frames(struct ath_softc *sc, struct ath_txq *txq,
         bool sw_pending)
{
 bool pending = 0;

 spin_lock_bh(&txq->axq_lock);

 if (txq->axq_depth) {
  pending = 1;
  goto out;
 }

 if (!sw_pending)
  goto out;

 if (txq->mac80211_qnum >= 0) {
  struct ath_acq *acq;

  acq = &sc->cur_chan->acq[txq->mac80211_qnum];
  if (!list_empty(&acq->acq_new) || !list_empty(&acq->acq_old))
   pending = 1;
 }
out:
 spin_unlock_bh(&txq->axq_lock);
 return pending;
}
