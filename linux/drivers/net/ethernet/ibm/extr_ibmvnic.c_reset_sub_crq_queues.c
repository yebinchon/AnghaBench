
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int req_tx_queues; int req_rx_queues; int * rx_scrq; int netdev; int * tx_scrq; } ;


 int netdev_dbg (int ,char*,int) ;
 int reset_one_sub_crq_queue (struct ibmvnic_adapter*,int ) ;

__attribute__((used)) static int reset_sub_crq_queues(struct ibmvnic_adapter *adapter)
{
 int i, rc;

 for (i = 0; i < adapter->req_tx_queues; i++) {
  netdev_dbg(adapter->netdev, "Re-setting tx_scrq[%d]\n", i);
  rc = reset_one_sub_crq_queue(adapter, adapter->tx_scrq[i]);
  if (rc)
   return rc;
 }

 for (i = 0; i < adapter->req_rx_queues; i++) {
  netdev_dbg(adapter->netdev, "Re-setting rx_scrq[%d]\n", i);
  rc = reset_one_sub_crq_queue(adapter, adapter->rx_scrq[i]);
  if (rc)
   return rc;
 }

 return rc;
}
