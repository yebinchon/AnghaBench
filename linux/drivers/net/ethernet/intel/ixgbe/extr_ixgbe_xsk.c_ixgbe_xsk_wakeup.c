
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ixgbe_ring {TYPE_1__* q_vector; int xsk_umem; } ;
struct ixgbe_adapter {size_t num_xdp_queues; struct ixgbe_ring** xdp_ring; int xdp_prog; int state; } ;
struct TYPE_2__ {int v_idx; int napi; } ;


 int BIT_ULL (int ) ;
 int ENETDOWN ;
 int ENXIO ;
 int READ_ONCE (int ) ;
 int __IXGBE_DOWN ;
 int ixgbe_irq_rearm_queues (struct ixgbe_adapter*,int ) ;
 int napi_if_scheduled_mark_missed (int *) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

int ixgbe_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ixgbe_ring *ring;

 if (test_bit(__IXGBE_DOWN, &adapter->state))
  return -ENETDOWN;

 if (!READ_ONCE(adapter->xdp_prog))
  return -ENXIO;

 if (qid >= adapter->num_xdp_queues)
  return -ENXIO;

 if (!adapter->xdp_ring[qid]->xsk_umem)
  return -ENXIO;

 ring = adapter->xdp_ring[qid];
 if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
  u64 eics = BIT_ULL(ring->q_vector->v_idx);

  ixgbe_irq_rearm_queues(adapter, eics);
 }

 return 0;
}
