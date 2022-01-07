
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_adapter {int * rx_rings; int * tx_rings; scalar_t__ num_active_queues; int vsi_res; } ;


 int kfree (int *) ;

__attribute__((used)) static void iavf_free_queues(struct iavf_adapter *adapter)
{
 if (!adapter->vsi_res)
  return;
 adapter->num_active_queues = 0;
 kfree(adapter->tx_rings);
 adapter->tx_rings = ((void*)0);
 kfree(adapter->rx_rings);
 adapter->rx_rings = ((void*)0);
}
