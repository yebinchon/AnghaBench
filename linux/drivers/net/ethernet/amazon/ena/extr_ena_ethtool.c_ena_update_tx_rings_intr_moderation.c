
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_1__* tx_ring; int ena_dev; } ;
struct TYPE_2__ {unsigned int smoothed_interval; } ;


 unsigned int ena_com_get_nonadaptive_moderation_interval_tx (int ) ;

__attribute__((used)) static void ena_update_tx_rings_intr_moderation(struct ena_adapter *adapter)
{
 unsigned int val;
 int i;

 val = ena_com_get_nonadaptive_moderation_interval_tx(adapter->ena_dev);

 for (i = 0; i < adapter->num_queues; i++)
  adapter->tx_ring[i].smoothed_interval = val;
}
