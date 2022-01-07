
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct et131x_adapter {int dummy; } ;


 int et131x_disable_interrupts (struct et131x_adapter*) ;
 int et131x_rx_dma_disable (struct et131x_adapter*) ;
 int et131x_tx_dma_disable (struct et131x_adapter*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static void et131x_disable_txrx(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);

 netif_stop_queue(netdev);

 et131x_rx_dma_disable(adapter);
 et131x_tx_dma_disable(adapter);

 et131x_disable_interrupts(adapter);
}
