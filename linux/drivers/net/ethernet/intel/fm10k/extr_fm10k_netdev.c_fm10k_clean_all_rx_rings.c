
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_rx_queues; int * rx_ring; } ;


 int fm10k_clean_rx_ring (int ) ;

void fm10k_clean_all_rx_rings(struct fm10k_intfc *interface)
{
 int i;

 for (i = 0; i < interface->num_rx_queues; i++)
  fm10k_clean_rx_ring(interface->rx_ring[i]);
}
