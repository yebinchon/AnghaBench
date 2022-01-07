
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct igc_adapter {int num_rx_queues; int num_tx_queues; TYPE_1__** tx_ring; TYPE_4__** rx_ring; TYPE_3__ hw; } ;
struct TYPE_8__ {int reg_idx; } ;
struct TYPE_5__ {int reg_idx; } ;




__attribute__((used)) static void igc_cache_ring_register(struct igc_adapter *adapter)
{
 int i = 0, j = 0;

 switch (adapter->hw.mac.type) {
 case 128:

 default:
  for (; i < adapter->num_rx_queues; i++)
   adapter->rx_ring[i]->reg_idx = i;
  for (; j < adapter->num_tx_queues; j++)
   adapter->tx_ring[j]->reg_idx = j;
  break;
 }
}
