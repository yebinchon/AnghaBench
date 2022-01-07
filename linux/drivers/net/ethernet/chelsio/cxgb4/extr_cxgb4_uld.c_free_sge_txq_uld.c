
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sge_uld_txq_info {int ntxq; struct sge_uld_txq* uldtxq; } ;
struct TYPE_3__ {int sdesc; int in_use; int cntxt_id; scalar_t__ desc; } ;
struct sge_uld_txq {TYPE_1__ q; int sendq; int qresume_tsk; } ;
struct adapter {int pf; int mbox; } ;


 int __skb_queue_purge (int *) ;
 int free_tx_desc (struct adapter*,TYPE_1__*,int ,int) ;
 int free_txq (struct adapter*,TYPE_1__*) ;
 int kfree (int ) ;
 int t4_ofld_eq_free (struct adapter*,int ,int ,int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void
free_sge_txq_uld(struct adapter *adap, struct sge_uld_txq_info *txq_info)
{
 int nq = txq_info->ntxq;
 int i;

 for (i = 0; i < nq; i++) {
  struct sge_uld_txq *txq = &txq_info->uldtxq[i];

  if (txq && txq->q.desc) {
   tasklet_kill(&txq->qresume_tsk);
   t4_ofld_eq_free(adap, adap->mbox, adap->pf, 0,
     txq->q.cntxt_id);
   free_tx_desc(adap, &txq->q, txq->q.in_use, 0);
   kfree(txq->q.sdesc);
   __skb_queue_purge(&txq->sendq);
   free_txq(adap, &txq->q);
  }
 }
}
