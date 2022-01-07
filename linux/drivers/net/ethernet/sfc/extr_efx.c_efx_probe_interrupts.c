
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct msix_entry {unsigned int entry; int vector; } ;
struct efx_nic {scalar_t__ interrupt_mode; unsigned int n_channels; unsigned int n_tx_channels; unsigned int n_rx_channels; int rss_spread; TYPE_2__* type; scalar_t__ n_extra_tx_channels; TYPE_1__** extra_channel_type; TYPE_3__* pci_dev; int legacy_irq; int net_dev; int max_tx_channels; int max_channels; } ;
struct TYPE_10__ {TYPE_1__* type; int irq; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_8__ {scalar_t__ min_interrupt_mode; int (* sriov_wanted ) (struct efx_nic*) ;} ;
struct TYPE_7__ {int (* handle_no_channel ) (struct efx_nic*) ;} ;


 scalar_t__ EFX_INT_MODE_LEGACY ;
 scalar_t__ EFX_INT_MODE_MSI ;
 scalar_t__ EFX_INT_MODE_MSIX ;
 int EFX_MAX_CHANNELS ;
 unsigned int EFX_MAX_EXTRA_CHANNELS ;
 int drv ;
 scalar_t__ efx_channel_has_tx_queues (TYPE_5__*) ;
 TYPE_5__* efx_get_channel (struct efx_nic*,unsigned int) ;
 scalar_t__ efx_separate_tx_channels ;
 int efx_vf_size (struct efx_nic*) ;
 unsigned int efx_wanted_parallelism (struct efx_nic*) ;
 unsigned int max (unsigned int,unsigned int) ;
 void* min (unsigned int,int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*,...) ;
 int pci_enable_msi (TYPE_3__*) ;
 int pci_enable_msix_range (TYPE_3__*,struct msix_entry*,int,unsigned int) ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static int efx_probe_interrupts(struct efx_nic *efx)
{
 unsigned int extra_channels = 0;
 unsigned int i, j;
 int rc;

 for (i = 0; i < EFX_MAX_EXTRA_CHANNELS; i++)
  if (efx->extra_channel_type[i])
   ++extra_channels;

 if (efx->interrupt_mode == EFX_INT_MODE_MSIX) {
  struct msix_entry xentries[EFX_MAX_CHANNELS];
  unsigned int n_channels;

  n_channels = efx_wanted_parallelism(efx);
  if (efx_separate_tx_channels)
   n_channels *= 2;
  n_channels += extra_channels;
  n_channels = min(n_channels, efx->max_channels);

  for (i = 0; i < n_channels; i++)
   xentries[i].entry = i;
  rc = pci_enable_msix_range(efx->pci_dev,
        xentries, 1, n_channels);
  if (rc < 0) {

   netif_err(efx, drv, efx->net_dev,
      "could not enable MSI-X\n");
   if (efx->type->min_interrupt_mode >= EFX_INT_MODE_MSI)
    efx->interrupt_mode = EFX_INT_MODE_MSI;
   else
    return rc;
  } else if (rc < n_channels) {
   netif_err(efx, drv, efx->net_dev,
      "WARNING: Insufficient MSI-X vectors"
      " available (%d < %u).\n", rc, n_channels);
   netif_err(efx, drv, efx->net_dev,
      "WARNING: Performance may be reduced.\n");
   n_channels = rc;
  }

  if (rc > 0) {
   efx->n_channels = n_channels;
   if (n_channels > extra_channels)
    n_channels -= extra_channels;
   if (efx_separate_tx_channels) {
    efx->n_tx_channels = min(max(n_channels / 2,
            1U),
        efx->max_tx_channels);
    efx->n_rx_channels = max(n_channels -
        efx->n_tx_channels,
        1U);
   } else {
    efx->n_tx_channels = min(n_channels,
        efx->max_tx_channels);
    efx->n_rx_channels = n_channels;
   }
   for (i = 0; i < efx->n_channels; i++)
    efx_get_channel(efx, i)->irq =
     xentries[i].vector;
  }
 }


 if (efx->interrupt_mode == EFX_INT_MODE_MSI) {
  efx->n_channels = 1;
  efx->n_rx_channels = 1;
  efx->n_tx_channels = 1;
  rc = pci_enable_msi(efx->pci_dev);
  if (rc == 0) {
   efx_get_channel(efx, 0)->irq = efx->pci_dev->irq;
  } else {
   netif_err(efx, drv, efx->net_dev,
      "could not enable MSI\n");
   if (efx->type->min_interrupt_mode >= EFX_INT_MODE_LEGACY)
    efx->interrupt_mode = EFX_INT_MODE_LEGACY;
   else
    return rc;
  }
 }


 if (efx->interrupt_mode == EFX_INT_MODE_LEGACY) {
  efx->n_channels = 1 + (efx_separate_tx_channels ? 1 : 0);
  efx->n_rx_channels = 1;
  efx->n_tx_channels = 1;
  efx->legacy_irq = efx->pci_dev->irq;
 }


 efx->n_extra_tx_channels = 0;
 j = efx->n_channels;
 for (i = 0; i < EFX_MAX_EXTRA_CHANNELS; i++) {
  if (!efx->extra_channel_type[i])
   continue;
  if (efx->interrupt_mode != EFX_INT_MODE_MSIX ||
      efx->n_channels <= extra_channels) {
   efx->extra_channel_type[i]->handle_no_channel(efx);
  } else {
   --j;
   efx_get_channel(efx, j)->type =
    efx->extra_channel_type[i];
   if (efx_channel_has_tx_queues(efx_get_channel(efx, j)))
    efx->n_extra_tx_channels++;
  }
 }
 efx->rss_spread = efx->n_rx_channels;

 return 0;
}
