
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {int n_channels; TYPE_1__* type; int timer_quantum_ns; int irq_mod_step_us; int n_rx_channels; int net_dev; int n_tx_channels; int rx_hash_key; int max_tx_channels; int max_channels; } ;
struct TYPE_2__ {int (* probe ) (struct ef4_nic*) ;int (* dimension_resources ) (struct ef4_nic*) ;int (* remove ) (struct ef4_nic*) ;} ;


 int DIV_ROUND_UP (int ,int) ;
 int EAGAIN ;
 int ENOSPC ;
 int drv ;
 int ef4_init_irq_moderation (struct ef4_nic*,int ,int ,int,int) ;
 int ef4_probe_interrupts (struct ef4_nic*) ;
 int ef4_remove_interrupts (struct ef4_nic*) ;
 int ef4_set_channels (struct ef4_nic*) ;
 int ef4_set_default_rx_indir_table (struct ef4_nic*) ;
 int netdev_rss_key_fill (int *,int) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*) ;
 int netif_err (struct ef4_nic*,int ,int ,char*) ;
 int netif_set_real_num_rx_queues (int ,int ) ;
 int netif_set_real_num_tx_queues (int ,int ) ;
 int probe ;
 int rx_irq_mod_usec ;
 int stub1 (struct ef4_nic*) ;
 int stub2 (struct ef4_nic*) ;
 int stub3 (struct ef4_nic*) ;
 int tx_irq_mod_usec ;

__attribute__((used)) static int ef4_probe_nic(struct ef4_nic *efx)
{
 int rc;

 netif_dbg(efx, probe, efx->net_dev, "creating NIC\n");


 rc = efx->type->probe(efx);
 if (rc)
  return rc;

 do {
  if (!efx->max_channels || !efx->max_tx_channels) {
   netif_err(efx, drv, efx->net_dev,
      "Insufficient resources to allocate"
      " any channels\n");
   rc = -ENOSPC;
   goto fail1;
  }




  rc = ef4_probe_interrupts(efx);
  if (rc)
   goto fail1;

  ef4_set_channels(efx);


  rc = efx->type->dimension_resources(efx);
  if (rc != 0 && rc != -EAGAIN)
   goto fail2;

  if (rc == -EAGAIN)

   ef4_remove_interrupts(efx);

 } while (rc == -EAGAIN);

 if (efx->n_channels > 1)
  netdev_rss_key_fill(&efx->rx_hash_key,
        sizeof(efx->rx_hash_key));
 ef4_set_default_rx_indir_table(efx);

 netif_set_real_num_tx_queues(efx->net_dev, efx->n_tx_channels);
 netif_set_real_num_rx_queues(efx->net_dev, efx->n_rx_channels);


 efx->irq_mod_step_us = DIV_ROUND_UP(efx->timer_quantum_ns, 1000);
 ef4_init_irq_moderation(efx, tx_irq_mod_usec, rx_irq_mod_usec, 1,
    1);

 return 0;

fail2:
 ef4_remove_interrupts(efx);
fail1:
 efx->type->remove(efx);
 return rc;
}
