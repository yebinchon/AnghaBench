
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union Vmxnet3_GenericDesc {int tcd; } ;
struct TYPE_2__ {int next2proc; scalar_t__ gen; union Vmxnet3_GenericDesc* base; } ;
struct vmxnet3_tx_queue {int tx_lock; int tx_ring; TYPE_1__ comp_ring; } ;
struct vmxnet3_adapter {int netdev; int pdev; } ;


 scalar_t__ VMXNET3_TCD_GET_GEN (int *) ;
 int VMXNET3_TCD_GET_TXIDX (int *) ;
 scalar_t__ VMXNET3_WAKE_QUEUE_THRESHOLD (struct vmxnet3_tx_queue*) ;
 int dma_rmb () ;
 scalar_t__ netif_carrier_ok (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vmxnet3_cmd_ring_desc_avail (int *) ;
 int vmxnet3_comp_ring_adv_next2proc (TYPE_1__*) ;
 scalar_t__ vmxnet3_tq_stopped (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ;
 int vmxnet3_tq_wake (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ;
 scalar_t__ vmxnet3_unmap_pkt (int ,struct vmxnet3_tx_queue*,int ,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_tq_tx_complete(struct vmxnet3_tx_queue *tq,
   struct vmxnet3_adapter *adapter)
{
 int completed = 0;
 union Vmxnet3_GenericDesc *gdesc;

 gdesc = tq->comp_ring.base + tq->comp_ring.next2proc;
 while (VMXNET3_TCD_GET_GEN(&gdesc->tcd) == tq->comp_ring.gen) {



  dma_rmb();

  completed += vmxnet3_unmap_pkt(VMXNET3_TCD_GET_TXIDX(
            &gdesc->tcd), tq, adapter->pdev,
            adapter);

  vmxnet3_comp_ring_adv_next2proc(&tq->comp_ring);
  gdesc = tq->comp_ring.base + tq->comp_ring.next2proc;
 }

 if (completed) {
  spin_lock(&tq->tx_lock);
  if (unlikely(vmxnet3_tq_stopped(tq, adapter) &&
        vmxnet3_cmd_ring_desc_avail(&tq->tx_ring) >
        VMXNET3_WAKE_QUEUE_THRESHOLD(tq) &&
        netif_carrier_ok(adapter->netdev))) {
   vmxnet3_tq_wake(tq, adapter);
  }
  spin_unlock(&tq->tx_lock);
 }
 return completed;
}
