
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_desc_ring {int dummy; } ;
struct ixgb_adapter {int restart_queue; struct ixgb_desc_ring tx_ring; } ;


 int EBUSY ;
 int IXGB_DESC_UNUSED (struct ixgb_desc_ring*) ;
 scalar_t__ likely (int) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int smp_mb () ;

__attribute__((used)) static int __ixgb_maybe_stop_tx(struct net_device *netdev, int size)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 struct ixgb_desc_ring *tx_ring = &adapter->tx_ring;

 netif_stop_queue(netdev);



 smp_mb();



 if (likely(IXGB_DESC_UNUSED(tx_ring) < size))
  return -EBUSY;


 netif_start_queue(netdev);
 ++adapter->restart_queue;
 return 0;
}
