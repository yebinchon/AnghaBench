
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siena_nic_data {unsigned int vf_buftbl_base; } ;
struct efx_nic {unsigned int n_tx_channels; unsigned int n_extra_tx_channels; unsigned int n_rx_channels; unsigned int n_channels; unsigned int vi_scale; unsigned int vf_count; unsigned int tx_dc_base; unsigned int rx_dc_base; int net_dev; TYPE_1__* type; struct siena_nic_data* nic_data; } ;
typedef int efx_qword_t ;
struct TYPE_2__ {scalar_t__ (* sriov_wanted ) (struct efx_nic*) ;} ;


 unsigned int EFX_BUF_SIZE ;
 unsigned int EFX_MAX_DMAQ_SIZE ;
 unsigned int EFX_MAX_EVQ_SIZE ;
 unsigned int EFX_TXQ_TYPES ;
 unsigned int EFX_VF_BUFTBL_PER_VI ;
 unsigned int EFX_VI_BASE ;
 unsigned int RX_DC_ENTRIES ;
 unsigned int TX_DC_ENTRIES ;
 unsigned int efx_vf_size (struct efx_nic*) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int) ;
 int probe ;
 scalar_t__ stub1 (struct efx_nic*) ;

void efx_farch_dimension_resources(struct efx_nic *efx, unsigned sram_lim_qw)
{
 unsigned vi_count, buftbl_min, total_tx_channels;





 total_tx_channels = efx->n_tx_channels + efx->n_extra_tx_channels;



 buftbl_min = ((efx->n_rx_channels * EFX_MAX_DMAQ_SIZE +
         total_tx_channels * EFX_TXQ_TYPES * EFX_MAX_DMAQ_SIZE +
         efx->n_channels * EFX_MAX_EVQ_SIZE)
        * sizeof(efx_qword_t) / EFX_BUF_SIZE);
 vi_count = max(efx->n_channels, total_tx_channels * EFX_TXQ_TYPES);
 efx->tx_dc_base = sram_lim_qw - vi_count * TX_DC_ENTRIES;
 efx->rx_dc_base = efx->tx_dc_base - vi_count * RX_DC_ENTRIES;
}
