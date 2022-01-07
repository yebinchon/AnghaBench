
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int num_queues; int netdev; } ;


 int ena_free_rx_resources (struct ena_adapter*,int) ;
 int ena_setup_rx_resources (struct ena_adapter*,int) ;
 int ifup ;
 int netif_err (struct ena_adapter*,int ,int ,char*,int) ;

__attribute__((used)) static int ena_setup_all_rx_resources(struct ena_adapter *adapter)
{
 int i, rc = 0;

 for (i = 0; i < adapter->num_queues; i++) {
  rc = ena_setup_rx_resources(adapter, i);
  if (rc)
   goto err_setup_rx;
 }

 return 0;

err_setup_rx:

 netif_err(adapter, ifup, adapter->netdev,
    "Rx queue %d: allocation failed\n", i);


 while (i--)
  ena_free_rx_resources(adapter, i);
 return rc;
}
