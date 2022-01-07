
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_adapter {int rx_ring; int tx_ring; int state; } ;


 int WARN_ON (int ) ;
 int __IGBVF_RESETTING ;
 int igbvf_down (struct igbvf_adapter*) ;
 int igbvf_free_irq (struct igbvf_adapter*) ;
 int igbvf_free_rx_resources (int ) ;
 int igbvf_free_tx_resources (int ) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int igbvf_close(struct net_device *netdev)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);

 WARN_ON(test_bit(__IGBVF_RESETTING, &adapter->state));
 igbvf_down(adapter);

 igbvf_free_irq(adapter);

 igbvf_free_tx_resources(adapter->tx_ring);
 igbvf_free_rx_resources(adapter->rx_ring);

 return 0;
}
