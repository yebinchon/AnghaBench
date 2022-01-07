
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ixgbe_ring_feature {int offset; int mask; int indices; } ;
struct ixgbe_adapter {int flags; int num_rx_queues; int num_tx_queues; TYPE_2__** tx_ring; int * netdev; TYPE_1__** rx_ring; struct ixgbe_ring_feature* ring_feature; } ;
struct TYPE_4__ {int reg_idx; } ;
struct TYPE_3__ {int reg_idx; int * netdev; } ;


 int IXGBE_FLAG_VMDQ_ENABLED ;
 size_t RING_F_FCOE ;
 size_t RING_F_RSS ;
 size_t RING_F_VMDQ ;
 int __ALIGN_MASK (int,int) ;

__attribute__((used)) static bool ixgbe_cache_ring_sriov(struct ixgbe_adapter *adapter)
{



 struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 struct ixgbe_ring_feature *rss = &adapter->ring_feature[RING_F_RSS];
 u16 reg_idx, pool;
 int i;


 if (!(adapter->flags & IXGBE_FLAG_VMDQ_ENABLED))
  return 0;


 pool = 0;
 reg_idx = vmdq->offset * __ALIGN_MASK(1, ~vmdq->mask);
 for (i = 0; i < adapter->num_rx_queues; i++, reg_idx++) {






  if ((reg_idx & ~vmdq->mask) >= rss->indices) {
   pool++;
   reg_idx = __ALIGN_MASK(reg_idx, ~vmdq->mask);
  }
  adapter->rx_ring[i]->reg_idx = reg_idx;
  adapter->rx_ring[i]->netdev = pool ? ((void*)0) : adapter->netdev;
 }
 reg_idx = vmdq->offset * __ALIGN_MASK(1, ~vmdq->mask);
 for (i = 0; i < adapter->num_tx_queues; i++, reg_idx++) {






  if ((reg_idx & rss->mask) >= rss->indices)
   reg_idx = __ALIGN_MASK(reg_idx, ~vmdq->mask);
  adapter->tx_ring[i]->reg_idx = reg_idx;
 }
 return 1;
}
