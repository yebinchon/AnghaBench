
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rx_hash_key; } ;
struct efx_nic {int n_channels; TYPE_1__* type; int timer_quantum_ns; int irq_mod_step_us; int n_rx_channels; int net_dev; int n_tx_channels; TYPE_2__ rss_context; int max_tx_channels; int max_channels; } ;
struct TYPE_3__ {int (* probe ) (struct efx_nic*) ;int (* dimension_resources ) (struct efx_nic*) ;int (* remove ) (struct efx_nic*) ;} ;


 int DIV_ROUND_UP (int ,int) ;
 int EAGAIN ;
 int ENOSPC ;
 int drv ;
 int efx_init_irq_moderation (struct efx_nic*,int ,int ,int,int) ;
 int efx_probe_interrupts (struct efx_nic*) ;
 int efx_remove_interrupts (struct efx_nic*) ;
 int efx_set_channels (struct efx_nic*) ;
 int efx_set_default_rx_indir_table (struct efx_nic*,TYPE_2__*) ;
 int netdev_rss_key_fill (int ,int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int netif_set_real_num_rx_queues (int ,int ) ;
 int netif_set_real_num_tx_queues (int ,int ) ;
 int probe ;
 int rx_irq_mod_usec ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;
 int stub3 (struct efx_nic*) ;
 int tx_irq_mod_usec ;

__attribute__((used)) static int efx_probe_nic(struct efx_nic *efx)
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




  rc = efx_probe_interrupts(efx);
  if (rc)
   goto fail1;

  efx_set_channels(efx);


  rc = efx->type->dimension_resources(efx);
  if (rc != 0 && rc != -EAGAIN)
   goto fail2;

  if (rc == -EAGAIN)

   efx_remove_interrupts(efx);

 } while (rc == -EAGAIN);

 if (efx->n_channels > 1)
  netdev_rss_key_fill(efx->rss_context.rx_hash_key,
        sizeof(efx->rss_context.rx_hash_key));
 efx_set_default_rx_indir_table(efx, &efx->rss_context);

 netif_set_real_num_tx_queues(efx->net_dev, efx->n_tx_channels);
 netif_set_real_num_rx_queues(efx->net_dev, efx->n_rx_channels);


 efx->irq_mod_step_us = DIV_ROUND_UP(efx->timer_quantum_ns, 1000);
 efx_init_irq_moderation(efx, tx_irq_mod_usec, rx_irq_mod_usec, 1,
    1);

 return 0;

fail2:
 efx_remove_interrupts(efx);
fail1:
 efx->type->remove(efx);
 return rc;
}
