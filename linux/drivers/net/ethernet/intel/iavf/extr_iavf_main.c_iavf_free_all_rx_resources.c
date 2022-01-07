
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iavf_adapter {int num_active_queues; TYPE_1__* rx_rings; } ;
struct TYPE_2__ {scalar_t__ desc; } ;


 int iavf_free_rx_resources (TYPE_1__*) ;

void iavf_free_all_rx_resources(struct iavf_adapter *adapter)
{
 int i;

 if (!adapter->rx_rings)
  return;

 for (i = 0; i < adapter->num_active_queues; i++)
  if (adapter->rx_rings[i].desc)
   iavf_free_rx_resources(&adapter->rx_rings[i]);
}
