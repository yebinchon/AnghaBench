
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_comps; scalar_t__ first; int * correlators; scalar_t__* rcs; } ;
union sub_crq {TYPE_2__ tx_comp; } ;
struct ibmvnic_tx_pool {int* free_map; size_t producer_index; int num_buffers; struct ibmvnic_tx_buff* tx_buff; } ;
struct ibmvnic_tx_buff {scalar_t__ num_entries; int * skb; scalar_t__ last_frag; scalar_t__* data_dma; } ;
struct ibmvnic_sub_crq_queue {unsigned int pool_index; int used; } ;
struct ibmvnic_adapter {int req_tx_entries_per_subcrq; int netdev; struct ibmvnic_tx_pool* tx_pool; struct ibmvnic_tx_pool* tso_pool; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int IBMVNIC_MAX_FRAGS_PER_CRQ ;
 int IBMVNIC_TSO_POOL_MASK ;
 scalar_t__ __netif_subqueue_stopped (int ,unsigned int) ;
 int atomic_sub_return (int,int *) ;
 int be32_to_cpu (int ) ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int dev_kfree_skb_any (int *) ;
 int disable_scrq_irq (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;
 int enable_scrq_irq (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;
 union sub_crq* ibmvnic_next_scrq (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;
 int netdev_dbg (int ,char*,unsigned int) ;
 int netif_wake_subqueue (int ,unsigned int) ;
 scalar_t__ pending_scrq (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;

__attribute__((used)) static int ibmvnic_complete_tx(struct ibmvnic_adapter *adapter,
          struct ibmvnic_sub_crq_queue *scrq)
{
 struct device *dev = &adapter->vdev->dev;
 struct ibmvnic_tx_pool *tx_pool;
 struct ibmvnic_tx_buff *txbuff;
 union sub_crq *next;
 int index;
 int i, j;

restart_loop:
 while (pending_scrq(adapter, scrq)) {
  unsigned int pool = scrq->pool_index;
  int num_entries = 0;

  next = ibmvnic_next_scrq(adapter, scrq);
  for (i = 0; i < next->tx_comp.num_comps; i++) {
   if (next->tx_comp.rcs[i]) {
    dev_err(dev, "tx error %x\n",
     next->tx_comp.rcs[i]);
    continue;
   }
   index = be32_to_cpu(next->tx_comp.correlators[i]);
   if (index & IBMVNIC_TSO_POOL_MASK) {
    tx_pool = &adapter->tso_pool[pool];
    index &= ~IBMVNIC_TSO_POOL_MASK;
   } else {
    tx_pool = &adapter->tx_pool[pool];
   }

   txbuff = &tx_pool->tx_buff[index];

   for (j = 0; j < IBMVNIC_MAX_FRAGS_PER_CRQ; j++) {
    if (!txbuff->data_dma[j])
     continue;

    txbuff->data_dma[j] = 0;
   }

   if (txbuff->last_frag) {
    dev_kfree_skb_any(txbuff->skb);
    txbuff->skb = ((void*)0);
   }

   num_entries += txbuff->num_entries;

   tx_pool->free_map[tx_pool->producer_index] = index;
   tx_pool->producer_index =
    (tx_pool->producer_index + 1) %
     tx_pool->num_buffers;
  }

  next->tx_comp.first = 0;

  if (atomic_sub_return(num_entries, &scrq->used) <=
      (adapter->req_tx_entries_per_subcrq / 2) &&
      __netif_subqueue_stopped(adapter->netdev,
          scrq->pool_index)) {
   netif_wake_subqueue(adapter->netdev, scrq->pool_index);
   netdev_dbg(adapter->netdev, "Started queue %d\n",
       scrq->pool_index);
  }
 }

 enable_scrq_irq(adapter, scrq);

 if (pending_scrq(adapter, scrq)) {
  disable_scrq_irq(adapter, scrq);
  goto restart_loop;
 }

 return 0;
}
