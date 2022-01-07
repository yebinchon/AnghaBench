
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct et131x_adapter {int flags; } ;


 int FMP_ADAPTER_INTERRUPT_IN_USE ;
 int et131x_enable_interrupts (struct et131x_adapter*) ;
 int et131x_rx_dma_enable (struct et131x_adapter*) ;
 int et131x_tx_dma_enable (struct et131x_adapter*) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static void et131x_enable_txrx(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);

 et131x_rx_dma_enable(adapter);
 et131x_tx_dma_enable(adapter);

 if (adapter->flags & FMP_ADAPTER_INTERRUPT_IN_USE)
  et131x_enable_interrupts(adapter);

 netif_start_queue(netdev);
}
