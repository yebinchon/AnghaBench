
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_rx_queues; int * rx_ring; } ;


 int fm10k_configure_dglort (struct fm10k_intfc*) ;
 int fm10k_configure_rx_ring (struct fm10k_intfc*,int ) ;
 int fm10k_configure_swpri_map (struct fm10k_intfc*) ;

__attribute__((used)) static void fm10k_configure_rx(struct fm10k_intfc *interface)
{
 int i;


 fm10k_configure_swpri_map(interface);


 fm10k_configure_dglort(interface);


 for (i = 0; i < interface->num_rx_queues; i++)
  fm10k_configure_rx_ring(interface, interface->rx_ring[i]);


}
