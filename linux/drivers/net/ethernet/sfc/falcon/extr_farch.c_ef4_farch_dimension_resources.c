
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int n_rx_channels; int n_tx_channels; int n_channels; unsigned int tx_dc_base; unsigned int rx_dc_base; } ;
typedef int ef4_qword_t ;


 int EF4_BUF_SIZE ;
 int EF4_MAX_DMAQ_SIZE ;
 int EF4_MAX_EVQ_SIZE ;
 int EF4_TXQ_TYPES ;
 unsigned int RX_DC_ENTRIES ;
 unsigned int TX_DC_ENTRIES ;
 unsigned int max (int,int) ;

void ef4_farch_dimension_resources(struct ef4_nic *efx, unsigned sram_lim_qw)
{
 unsigned vi_count, buftbl_min;




 buftbl_min = ((efx->n_rx_channels * EF4_MAX_DMAQ_SIZE +
         efx->n_tx_channels * EF4_TXQ_TYPES * EF4_MAX_DMAQ_SIZE +
         efx->n_channels * EF4_MAX_EVQ_SIZE)
        * sizeof(ef4_qword_t) / EF4_BUF_SIZE);
 vi_count = max(efx->n_channels, efx->n_tx_channels * EF4_TXQ_TYPES);

 efx->tx_dc_base = sram_lim_qw - vi_count * TX_DC_ENTRIES;
 efx->rx_dc_base = efx->tx_dc_base - vi_count * RX_DC_ENTRIES;
}
