
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_tx_queues; int * tx_ring; } ;


 int fm10k_configure_tx_ring (struct fm10k_intfc*,int ) ;
 int fm10k_enable_tx_ring (struct fm10k_intfc*,int ) ;

__attribute__((used)) static void fm10k_configure_tx(struct fm10k_intfc *interface)
{
 int i;


 for (i = 0; i < interface->num_tx_queues; i++)
  fm10k_configure_tx_ring(interface, interface->tx_ring[i]);


 for (i = 0; i < interface->num_tx_queues; i++)
  fm10k_enable_tx_ring(interface, interface->tx_ring[i]);
}
