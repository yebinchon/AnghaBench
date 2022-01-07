
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_tx_queues; int * tx_ring; } ;


 int fm10k_free_tx_resources (int ) ;

__attribute__((used)) static void fm10k_free_all_tx_resources(struct fm10k_intfc *interface)
{
 int i = interface->num_tx_queues;

 while (i--)
  fm10k_free_tx_resources(interface->tx_ring[i]);
}
