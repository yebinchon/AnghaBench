
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_2__* rx_ring; TYPE_1__* tx_ring; } ;
struct TYPE_4__ {int ring_size; } ;
struct TYPE_3__ {int ring_size; } ;



__attribute__((used)) static void set_io_rings_size(struct ena_adapter *adapter,
         int new_tx_size, int new_rx_size)
{
 int i;

 for (i = 0; i < adapter->num_queues; i++) {
  adapter->tx_ring[i].ring_size = new_tx_size;
  adapter->rx_ring[i].ring_size = new_rx_size;
 }
}
