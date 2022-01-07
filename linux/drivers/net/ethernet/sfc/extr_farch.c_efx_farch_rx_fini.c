
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_rx_queue {int rxd; struct efx_nic* efx; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef int efx_oword_t ;
struct TYPE_2__ {int rxd_ptr_tbl_base; } ;


 int EFX_ZERO_OWORD (int ) ;
 int efx_fini_special_buffer (struct efx_nic*,int *) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;

void efx_farch_rx_fini(struct efx_rx_queue *rx_queue)
{
 efx_oword_t rx_desc_ptr;
 struct efx_nic *efx = rx_queue->efx;


 EFX_ZERO_OWORD(rx_desc_ptr);
 efx_writeo_table(efx, &rx_desc_ptr, efx->type->rxd_ptr_tbl_base,
    efx_rx_queue_index(rx_queue));


 efx_fini_special_buffer(efx, &rx_queue->rxd);
}
