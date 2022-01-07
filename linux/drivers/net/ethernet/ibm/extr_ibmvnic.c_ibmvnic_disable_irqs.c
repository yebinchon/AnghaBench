
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; TYPE_1__** rx_scrq; TYPE_1__** tx_scrq; struct net_device* netdev; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int disable_irq (scalar_t__) ;
 int disable_scrq_irq (struct ibmvnic_adapter*,TYPE_1__*) ;
 int netdev_dbg (struct net_device*,char*,int) ;

__attribute__((used)) static void ibmvnic_disable_irqs(struct ibmvnic_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i;

 if (adapter->tx_scrq) {
  for (i = 0; i < adapter->req_tx_queues; i++)
   if (adapter->tx_scrq[i]->irq) {
    netdev_dbg(netdev,
        "Disabling tx_scrq[%d] irq\n", i);
    disable_scrq_irq(adapter, adapter->tx_scrq[i]);
    disable_irq(adapter->tx_scrq[i]->irq);
   }
 }

 if (adapter->rx_scrq) {
  for (i = 0; i < adapter->req_rx_queues; i++) {
   if (adapter->rx_scrq[i]->irq) {
    netdev_dbg(netdev,
        "Disabling rx_scrq[%d] irq\n", i);
    disable_scrq_irq(adapter, adapter->rx_scrq[i]);
    disable_irq(adapter->rx_scrq[i]->irq);
   }
  }
 }
}
