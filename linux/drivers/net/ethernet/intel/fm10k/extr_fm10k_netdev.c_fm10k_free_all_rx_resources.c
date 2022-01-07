
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_rx_queues; int * rx_ring; } ;


 int fm10k_free_rx_resources (int ) ;

__attribute__((used)) static void fm10k_free_all_rx_resources(struct fm10k_intfc *interface)
{
 int i = interface->num_rx_queues;

 while (i--)
  fm10k_free_rx_resources(interface->rx_ring[i]);
}
