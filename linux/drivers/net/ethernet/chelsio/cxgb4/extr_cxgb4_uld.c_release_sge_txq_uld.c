
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_uld_txq_info {struct sge_uld_txq_info* uldtxq; int users; } ;
struct TYPE_2__ {struct sge_uld_txq_info** uld_txq_info; } ;
struct adapter {TYPE_1__ sge; } ;


 int TX_ULD (unsigned int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int free_sge_txq_uld (struct adapter*,struct sge_uld_txq_info*) ;
 int kfree (struct sge_uld_txq_info*) ;

__attribute__((used)) static void
release_sge_txq_uld(struct adapter *adap, unsigned int uld_type)
{
 struct sge_uld_txq_info *txq_info = ((void*)0);
 int tx_uld_type = TX_ULD(uld_type);

 txq_info = adap->sge.uld_txq_info[tx_uld_type];

 if (txq_info && atomic_dec_and_test(&txq_info->users)) {
  free_sge_txq_uld(adap, txq_info);
  kfree(txq_info->uldtxq);
  kfree(txq_info);
  adap->sge.uld_txq_info[tx_uld_type] = ((void*)0);
 }
}
