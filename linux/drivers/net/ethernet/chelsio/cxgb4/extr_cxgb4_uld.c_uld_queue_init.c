
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_uld_txq_info {int ntxq; } ;
struct sge_uld_rxq_info {int nciq; scalar_t__ nrxq; scalar_t__ rspq_id; } ;
struct cxgb4_lld_info {int ntxq; int nciq; scalar_t__ ciq_ids; scalar_t__ nrxq; scalar_t__ rxq_ids; } ;
struct TYPE_2__ {struct sge_uld_txq_info** uld_txq_info; struct sge_uld_rxq_info** uld_rxq_info; } ;
struct adapter {TYPE_1__ sge; } ;


 int TX_ULD (unsigned int) ;

__attribute__((used)) static void uld_queue_init(struct adapter *adap, unsigned int uld_type,
      struct cxgb4_lld_info *lli)
{
 struct sge_uld_rxq_info *rxq_info = adap->sge.uld_rxq_info[uld_type];
 int tx_uld_type = TX_ULD(uld_type);
 struct sge_uld_txq_info *txq_info = adap->sge.uld_txq_info[tx_uld_type];

 lli->rxq_ids = rxq_info->rspq_id;
 lli->nrxq = rxq_info->nrxq;
 lli->ciq_ids = rxq_info->rspq_id + rxq_info->nrxq;
 lli->nciq = rxq_info->nciq;
 lli->ntxq = txq_info->ntxq;
}
