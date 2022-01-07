
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rb_allocator {int rx_alloc; int alloc_wq; int req_pending; } ;
struct iwl_trans_pcie {struct iwl_rb_allocator rba; } ;
struct iwl_trans {int dummy; } ;
struct iwl_rxq {int used_count; int rx_used; } ;
struct iwl_rx_mem_buffer {int list; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int RX_CLAIM_REQ_ALLOC ;
 int RX_POST_REQ_ALLOC ;
 int atomic_inc (int *) ;
 int iwl_pcie_rx_move_to_allocator (struct iwl_rxq*,struct iwl_rb_allocator*) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_pcie_rx_reuse_rbd(struct iwl_trans *trans,
      struct iwl_rx_mem_buffer *rxb,
      struct iwl_rxq *rxq, bool emergency)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rb_allocator *rba = &trans_pcie->rba;



 list_add_tail(&rxb->list, &rxq->rx_used);

 if (unlikely(emergency))
  return;


 rxq->used_count++;






 if ((rxq->used_count % RX_CLAIM_REQ_ALLOC) == RX_POST_REQ_ALLOC) {


  iwl_pcie_rx_move_to_allocator(rxq, rba);

  atomic_inc(&rba->req_pending);
  queue_work(rba->alloc_wq, &rba->rx_alloc);
 }
}
