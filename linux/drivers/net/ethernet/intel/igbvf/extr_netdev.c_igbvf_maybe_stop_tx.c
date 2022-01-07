
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int restart_queue; int tx_ring; } ;


 int EBUSY ;
 int igbvf_desc_unused (int ) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int smp_mb () ;

__attribute__((used)) static int igbvf_maybe_stop_tx(struct net_device *netdev, int size)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);


 if (igbvf_desc_unused(adapter->tx_ring) >= size)
  return 0;

 netif_stop_queue(netdev);





 smp_mb();


 if (igbvf_desc_unused(adapter->tx_ring) < size)
  return -EBUSY;

 netif_wake_queue(netdev);

 ++adapter->restart_queue;
 return 0;
}
