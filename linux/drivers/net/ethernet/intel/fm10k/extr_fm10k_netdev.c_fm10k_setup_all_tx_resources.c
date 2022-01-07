
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_intfc {int num_tx_queues; int * tx_ring; int netdev; } ;


 int fm10k_free_tx_resources (int ) ;
 int fm10k_setup_tx_resources (int ) ;
 int netif_err (struct fm10k_intfc*,int ,int ,char*,int) ;
 int probe ;

__attribute__((used)) static int fm10k_setup_all_tx_resources(struct fm10k_intfc *interface)
{
 int i, err;

 for (i = 0; i < interface->num_tx_queues; i++) {
  err = fm10k_setup_tx_resources(interface->tx_ring[i]);
  if (!err)
   continue;

  netif_err(interface, probe, interface->netdev,
     "Allocation for Tx Queue %u failed\n", i);
  goto err_setup_tx;
 }

 return 0;
err_setup_tx:

 while (i--)
  fm10k_free_tx_resources(interface->tx_ring[i]);
 return err;
}
