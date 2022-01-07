
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_rb_allocator {int rx_alloc; } ;
struct iwl_trans_pcie {struct iwl_rxq* rxq; scalar_t__ base_rb_stts_dma; int * base_rb_stts; struct iwl_rb_allocator rba; } ;
struct iwl_trans {size_t num_rx_queues; int dev; TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ poll; } ;
struct iwl_rxq {TYPE_2__ napi; } ;
struct iwl_rb_status {int dummy; } ;
typedef int __le16 ;
struct TYPE_3__ {scalar_t__ device_family; } ;


 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int cancel_work_sync (int *) ;
 int dma_free_coherent (int ,size_t,int *,scalar_t__) ;
 int iwl_pcie_free_rbs_pool (struct iwl_trans*) ;
 int iwl_pcie_free_rxq_dma (struct iwl_trans*,struct iwl_rxq*) ;
 int kfree (struct iwl_rxq*) ;
 int netif_napi_del (TYPE_2__*) ;

void iwl_pcie_rx_free(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rb_allocator *rba = &trans_pcie->rba;
 int i;
 size_t rb_stts_size = trans->trans_cfg->device_family >=
         IWL_DEVICE_FAMILY_22560 ?
         sizeof(__le16) : sizeof(struct iwl_rb_status);





 if (!trans_pcie->rxq) {
  IWL_DEBUG_INFO(trans, "Free NULL rx context\n");
  return;
 }

 cancel_work_sync(&rba->rx_alloc);

 iwl_pcie_free_rbs_pool(trans);

 if (trans_pcie->base_rb_stts) {
  dma_free_coherent(trans->dev,
      rb_stts_size * trans->num_rx_queues,
      trans_pcie->base_rb_stts,
      trans_pcie->base_rb_stts_dma);
  trans_pcie->base_rb_stts = ((void*)0);
  trans_pcie->base_rb_stts_dma = 0;
 }

 for (i = 0; i < trans->num_rx_queues; i++) {
  struct iwl_rxq *rxq = &trans_pcie->rxq[i];

  iwl_pcie_free_rxq_dma(trans, rxq);

  if (rxq->napi.poll)
   netif_napi_del(&rxq->napi);
 }
 kfree(trans_pcie->rxq);
}
