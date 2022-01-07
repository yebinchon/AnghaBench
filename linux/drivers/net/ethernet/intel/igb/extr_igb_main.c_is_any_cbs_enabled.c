
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igb_adapter {int num_tx_queues; TYPE_1__** tx_ring; } ;
struct TYPE_2__ {scalar_t__ cbs_enable; } ;



__attribute__((used)) static bool is_any_cbs_enabled(struct igb_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++) {
  if (adapter->tx_ring[i]->cbs_enable)
   return 1;
 }

 return 0;
}
