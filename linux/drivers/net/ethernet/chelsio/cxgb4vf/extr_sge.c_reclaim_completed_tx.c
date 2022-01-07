
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int in_use; } ;
struct adapter {int dummy; } ;


 int MAX_TX_RECLAIM ;
 int free_tx_desc (struct adapter*,struct sge_txq*,int,int) ;
 int reclaimable (struct sge_txq*) ;

__attribute__((used)) static inline void reclaim_completed_tx(struct adapter *adapter,
     struct sge_txq *tq,
     bool unmap)
{
 int avail = reclaimable(tq);

 if (avail) {




  if (avail > MAX_TX_RECLAIM)
   avail = MAX_TX_RECLAIM;

  free_tx_desc(adapter, tq, avail, unmap);
  tq->in_use -= avail;
 }
}
