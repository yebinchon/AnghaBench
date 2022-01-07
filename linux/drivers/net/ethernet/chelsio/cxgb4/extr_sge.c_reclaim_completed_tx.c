
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int in_use; } ;
struct adapter {int dummy; } ;


 int MAX_TX_RECLAIM ;
 int free_tx_desc (struct adapter*,struct sge_txq*,int,int) ;
 int reclaimable (struct sge_txq*) ;

__attribute__((used)) static inline int reclaim_completed_tx(struct adapter *adap, struct sge_txq *q,
           int maxreclaim, bool unmap)
{
 int reclaim = reclaimable(q);

 if (reclaim) {




  if (maxreclaim < 0)
   maxreclaim = MAX_TX_RECLAIM;
  if (reclaim > maxreclaim)
   reclaim = maxreclaim;

  free_tx_desc(adap, q, reclaim, unmap);
  q->in_use -= reclaim;
 }

 return reclaim;
}
