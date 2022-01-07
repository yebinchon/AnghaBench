
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ibmvnic_adapter {int state; int req_rx_queues; int req_tx_queues; int * napi; TYPE_1__** tx_scrq; TYPE_1__** rx_scrq; } ;
typedef enum vnic_state { ____Placeholder_vnic_state } vnic_state ;
struct TYPE_2__ {int irq; } ;


 int IBMVNIC_LOGICAL_LNK_UP ;
 int VNIC_CLOSED ;
 int VNIC_OPEN ;
 int VNIC_OPENING ;
 int enable_irq (int ) ;
 int enable_scrq_irq (struct ibmvnic_adapter*,TYPE_1__*) ;
 int ibmvnic_napi_enable (struct ibmvnic_adapter*) ;
 int napi_disable (int *) ;
 int napi_schedule (int *) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int release_resources (struct ibmvnic_adapter*) ;
 int replenish_pools (struct ibmvnic_adapter*) ;
 int set_link_state (struct ibmvnic_adapter*,int ) ;

__attribute__((used)) static int __ibmvnic_open(struct net_device *netdev)
{
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 enum vnic_state prev_state = adapter->state;
 int i, rc;

 adapter->state = VNIC_OPENING;
 replenish_pools(adapter);
 ibmvnic_napi_enable(adapter);




 for (i = 0; i < adapter->req_rx_queues; i++) {
  netdev_dbg(netdev, "Enabling rx_scrq[%d] irq\n", i);
  if (prev_state == VNIC_CLOSED)
   enable_irq(adapter->rx_scrq[i]->irq);
  enable_scrq_irq(adapter, adapter->rx_scrq[i]);
 }

 for (i = 0; i < adapter->req_tx_queues; i++) {
  netdev_dbg(netdev, "Enabling tx_scrq[%d] irq\n", i);
  if (prev_state == VNIC_CLOSED)
   enable_irq(adapter->tx_scrq[i]->irq);
  enable_scrq_irq(adapter, adapter->tx_scrq[i]);
 }

 rc = set_link_state(adapter, IBMVNIC_LOGICAL_LNK_UP);
 if (rc) {
  for (i = 0; i < adapter->req_rx_queues; i++)
   napi_disable(&adapter->napi[i]);
  release_resources(adapter);
  return rc;
 }

 netif_tx_start_all_queues(netdev);

 if (prev_state == VNIC_CLOSED) {
  for (i = 0; i < adapter->req_rx_queues; i++)
   napi_schedule(&adapter->napi[i]);
 }

 adapter->state = VNIC_OPEN;
 return rc;
}
