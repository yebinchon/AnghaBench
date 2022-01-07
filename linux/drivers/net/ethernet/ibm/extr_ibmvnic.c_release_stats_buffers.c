
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int * rx_stats_buffers; int * tx_stats_buffers; } ;


 int kfree (int *) ;

__attribute__((used)) static void release_stats_buffers(struct ibmvnic_adapter *adapter)
{
 kfree(adapter->tx_stats_buffers);
 kfree(adapter->rx_stats_buffers);
 adapter->tx_stats_buffers = ((void*)0);
 adapter->rx_stats_buffers = ((void*)0);
}
