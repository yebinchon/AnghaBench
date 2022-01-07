
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_rx_queues; int * rx_ring; int netdev; } ;


 int fm10k_free_rx_resources (int ) ;
 int fm10k_setup_rx_resources (int ) ;
 int netif_err (struct fm10k_intfc*,int ,int ,char*,int) ;
 int probe ;

__attribute__((used)) static int fm10k_setup_all_rx_resources(struct fm10k_intfc *interface)
{
 int i, err;

 for (i = 0; i < interface->num_rx_queues; i++) {
  err = fm10k_setup_rx_resources(interface->rx_ring[i]);
  if (!err)
   continue;

  netif_err(interface, probe, interface->netdev,
     "Allocation for Rx Queue %u failed\n", i);
  goto err_setup_rx;
 }

 return 0;
err_setup_rx:

 while (i--)
  fm10k_free_rx_resources(interface->rx_ring[i]);
 return err;
}
