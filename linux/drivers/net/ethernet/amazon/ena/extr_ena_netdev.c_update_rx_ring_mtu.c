
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_1__* rx_ring; } ;
struct TYPE_2__ {int mtu; } ;



__attribute__((used)) static void update_rx_ring_mtu(struct ena_adapter *adapter, int mtu)
{
 int i;

 for (i = 0; i < adapter->num_queues; i++)
  adapter->rx_ring[i].mtu = mtu;
}
