
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sge_uld_txq_info {int ntxq; struct sge_uld_txq* uldtxq; } ;
struct TYPE_5__ {int size; } ;
struct sge_uld_txq {TYPE_2__ q; } ;
struct TYPE_6__ {int cntxt_id; } ;
struct sge {TYPE_3__ fw_evtq; } ;
struct TYPE_4__ {int nports; } ;
struct adapter {int * port; TYPE_1__ params; struct sge sge; } ;


 int free_sge_txq_uld (struct adapter*,struct sge_uld_txq_info*) ;
 int t4_sge_alloc_uld_txq (struct adapter*,struct sge_uld_txq*,int ,int ,unsigned int) ;

__attribute__((used)) static int
alloc_sge_txq_uld(struct adapter *adap, struct sge_uld_txq_info *txq_info,
    unsigned int uld_type)
{
 struct sge *s = &adap->sge;
 int nq = txq_info->ntxq;
 int i, j, err;

 j = nq / adap->params.nports;
 for (i = 0; i < nq; i++) {
  struct sge_uld_txq *txq = &txq_info->uldtxq[i];

  txq->q.size = 1024;
  err = t4_sge_alloc_uld_txq(adap, txq, adap->port[i / j],
        s->fw_evtq.cntxt_id, uld_type);
  if (err)
   goto freeout;
 }
 return 0;
freeout:
 free_sge_txq_uld(adap, txq_info);
 return err;
}
