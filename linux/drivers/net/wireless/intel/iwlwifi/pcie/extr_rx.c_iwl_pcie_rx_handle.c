
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_rb_allocator {int req_pending; } ;
struct iwl_trans_pcie {struct iwl_rb_allocator rba; struct iwl_rxq* rxq; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ poll; } ;
struct iwl_rxq {int read; int queue_size; int used_count; TYPE_2__ napi; int lock; int * cr_tail; int id; int bd; } ;
struct iwl_rx_mem_buffer {int dummy; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;


 int GFP_ATOMIC ;
 int IWL_DEBUG_RX (struct iwl_trans*,char*,int ,int,...) ;
 int IWL_DEBUG_TPT (struct iwl_trans*,char*,int) ;
 scalar_t__ IWL_DEVICE_FAMILY_22560 ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int RX_CLAIM_REQ_ALLOC ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int atomic_read (int *) ;
 int cpu_to_le16 (int) ;
 int iwl_get_closed_rb_stts (struct iwl_trans*,struct iwl_rxq*) ;
 struct iwl_rx_mem_buffer* iwl_pcie_get_rxb (struct iwl_trans*,struct iwl_rxq*,int) ;
 int iwl_pcie_rx_allocator_get (struct iwl_trans*,struct iwl_rxq*) ;
 int iwl_pcie_rx_handle_rb (struct iwl_trans*,struct iwl_rxq*,struct iwl_rx_mem_buffer*,int,int) ;
 int iwl_pcie_rx_move_to_allocator (struct iwl_rxq*,struct iwl_rb_allocator*) ;
 int iwl_pcie_rxq_alloc_rbs (struct iwl_trans*,int ,struct iwl_rxq*) ;
 int iwl_pcie_rxq_restock (struct iwl_trans*,struct iwl_rxq*) ;
 int le16_to_cpu (int ) ;
 int napi_gro_flush (TYPE_2__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void iwl_pcie_rx_handle(struct iwl_trans *trans, int queue)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rxq *rxq;
 u32 r, i, count = 0;
 bool emergency = 0;

 if (WARN_ON_ONCE(!trans_pcie->rxq || !trans_pcie->rxq[queue].bd))
  return;

 rxq = &trans_pcie->rxq[queue];

restart:
 spin_lock(&rxq->lock);


 r = le16_to_cpu(iwl_get_closed_rb_stts(trans, rxq)) & 0x0FFF;
 i = rxq->read;


 r &= (rxq->queue_size - 1);


 if (i == r)
  IWL_DEBUG_RX(trans, "Q %d: HW = SW = %d\n", rxq->id, r);

 while (i != r) {
  struct iwl_rb_allocator *rba = &trans_pcie->rba;
  struct iwl_rx_mem_buffer *rxb;

  u32 rb_pending_alloc =
   atomic_read(&trans_pcie->rba.req_pending) *
   RX_CLAIM_REQ_ALLOC;

  if (unlikely(rb_pending_alloc >= rxq->queue_size / 2 &&
        !emergency)) {
   iwl_pcie_rx_move_to_allocator(rxq, rba);
   emergency = 1;
   IWL_DEBUG_TPT(trans,
          "RX path is in emergency. Pending allocations %d\n",
          rb_pending_alloc);
  }

  IWL_DEBUG_RX(trans, "Q %d: HW = %d, SW = %d\n", rxq->id, r, i);

  rxb = iwl_pcie_get_rxb(trans, rxq, i);
  if (!rxb)
   goto out;

  iwl_pcie_rx_handle_rb(trans, rxq, rxb, emergency, i);

  i = (i + 1) & (rxq->queue_size - 1);
  if (rxq->used_count >= RX_CLAIM_REQ_ALLOC)
   iwl_pcie_rx_allocator_get(trans, rxq);

  if (rxq->used_count % RX_CLAIM_REQ_ALLOC == 0 && !emergency) {

   iwl_pcie_rx_move_to_allocator(rxq, rba);
  } else if (emergency) {
   count++;
   if (count == 8) {
    count = 0;
    if (rb_pending_alloc < rxq->queue_size / 3) {
     IWL_DEBUG_TPT(trans,
            "RX path exited emergency. Pending allocations %d\n",
            rb_pending_alloc);
     emergency = 0;
    }

    rxq->read = i;
    spin_unlock(&rxq->lock);
    iwl_pcie_rxq_alloc_rbs(trans, GFP_ATOMIC, rxq);
    iwl_pcie_rxq_restock(trans, rxq);
    goto restart;
   }
  }
 }
out:

 rxq->read = i;

 if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22560)
  *rxq->cr_tail = cpu_to_le16(r);
 spin_unlock(&rxq->lock);
 if (unlikely(emergency && count))
  iwl_pcie_rxq_alloc_rbs(trans, GFP_ATOMIC, rxq);

 if (rxq->napi.poll)
  napi_gro_flush(&rxq->napi, 0);

 iwl_pcie_rxq_restock(trans, rxq);
}
