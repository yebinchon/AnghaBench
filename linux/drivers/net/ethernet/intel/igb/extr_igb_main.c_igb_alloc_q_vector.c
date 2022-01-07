
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct igb_ring {int queue_index; int cbs_enable; int rx_syncp; int count; int flags; struct igb_q_vector* q_vector; int netdev; int * dev; int tx_syncp2; int tx_syncp; scalar_t__ locredit; scalar_t__ hicredit; scalar_t__ sendslope; scalar_t__ idleslope; } ;
struct TYPE_8__ {int work_limit; } ;
struct igb_q_vector {int itr_val; TYPE_4__ rx; TYPE_4__ tx; struct igb_ring* ring; scalar_t__ itr_register; struct igb_adapter* adapter; int napi; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct igb_adapter {int rx_itr_setting; int tx_itr_setting; struct igb_ring** rx_ring; int rx_ring_count; TYPE_3__ hw; int netdev; TYPE_1__* pdev; struct igb_ring** tx_ring; int tx_ring_count; scalar_t__ io_addr; int tx_work_limit; struct igb_q_vector** q_vector; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ E1000_EITR (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IGB_RING_FLAG_RX_LB_VLAN_BSWAP ;
 int IGB_RING_FLAG_RX_SCTP_CSUM ;
 int IGB_RING_FLAG_TX_CTX_IDX ;
 int IGB_START_ITR ;
 scalar_t__ e1000_82575 ;
 scalar_t__ e1000_82576 ;
 scalar_t__ e1000_i350 ;
 int igb_add_ring (struct igb_ring*,TYPE_4__*) ;
 int igb_poll ;
 int kfree_rcu (struct igb_q_vector*,int ) ;
 size_t ksize (struct igb_q_vector*) ;
 struct igb_q_vector* kzalloc (size_t,int ) ;
 int memset (struct igb_q_vector*,int ,size_t) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int rcu ;
 int set_bit (int ,int *) ;
 size_t struct_size (struct igb_q_vector*,struct igb_ring*,int) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int igb_alloc_q_vector(struct igb_adapter *adapter,
         int v_count, int v_idx,
         int txr_count, int txr_idx,
         int rxr_count, int rxr_idx)
{
 struct igb_q_vector *q_vector;
 struct igb_ring *ring;
 int ring_count;
 size_t size;


 if (txr_count > 1 || rxr_count > 1)
  return -ENOMEM;

 ring_count = txr_count + rxr_count;
 size = struct_size(q_vector, ring, ring_count);


 q_vector = adapter->q_vector[v_idx];
 if (!q_vector) {
  q_vector = kzalloc(size, GFP_KERNEL);
 } else if (size > ksize(q_vector)) {
  kfree_rcu(q_vector, rcu);
  q_vector = kzalloc(size, GFP_KERNEL);
 } else {
  memset(q_vector, 0, size);
 }
 if (!q_vector)
  return -ENOMEM;


 netif_napi_add(adapter->netdev, &q_vector->napi,
         igb_poll, 64);


 adapter->q_vector[v_idx] = q_vector;
 q_vector->adapter = adapter;


 q_vector->tx.work_limit = adapter->tx_work_limit;


 q_vector->itr_register = adapter->io_addr + E1000_EITR(0);
 q_vector->itr_val = IGB_START_ITR;


 ring = q_vector->ring;


 if (rxr_count) {

  if (!adapter->rx_itr_setting || adapter->rx_itr_setting > 3)
   q_vector->itr_val = adapter->rx_itr_setting;
 } else {

  if (!adapter->tx_itr_setting || adapter->tx_itr_setting > 3)
   q_vector->itr_val = adapter->tx_itr_setting;
 }

 if (txr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  igb_add_ring(ring, &q_vector->tx);


  if (adapter->hw.mac.type == e1000_82575)
   set_bit(IGB_RING_FLAG_TX_CTX_IDX, &ring->flags);


  ring->count = adapter->tx_ring_count;
  ring->queue_index = txr_idx;

  ring->cbs_enable = 0;
  ring->idleslope = 0;
  ring->sendslope = 0;
  ring->hicredit = 0;
  ring->locredit = 0;

  u64_stats_init(&ring->tx_syncp);
  u64_stats_init(&ring->tx_syncp2);


  adapter->tx_ring[txr_idx] = ring;


  ring++;
 }

 if (rxr_count) {

  ring->dev = &adapter->pdev->dev;
  ring->netdev = adapter->netdev;


  ring->q_vector = q_vector;


  igb_add_ring(ring, &q_vector->rx);


  if (adapter->hw.mac.type >= e1000_82576)
   set_bit(IGB_RING_FLAG_RX_SCTP_CSUM, &ring->flags);




  if (adapter->hw.mac.type >= e1000_i350)
   set_bit(IGB_RING_FLAG_RX_LB_VLAN_BSWAP, &ring->flags);


  ring->count = adapter->rx_ring_count;
  ring->queue_index = rxr_idx;

  u64_stats_init(&ring->rx_syncp);


  adapter->rx_ring[rxr_idx] = ring;
 }

 return 0;
}
