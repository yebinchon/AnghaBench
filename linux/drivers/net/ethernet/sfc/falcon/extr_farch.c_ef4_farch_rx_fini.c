
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_rx_queue {int rxd; struct ef4_nic* efx; } ;
struct ef4_nic {TYPE_1__* type; } ;
typedef int ef4_oword_t ;
struct TYPE_2__ {int rxd_ptr_tbl_base; } ;


 int EF4_ZERO_OWORD (int ) ;
 int ef4_fini_special_buffer (struct ef4_nic*,int *) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_writeo_table (struct ef4_nic*,int *,int ,int ) ;

void ef4_farch_rx_fini(struct ef4_rx_queue *rx_queue)
{
 ef4_oword_t rx_desc_ptr;
 struct ef4_nic *efx = rx_queue->efx;


 EF4_ZERO_OWORD(rx_desc_ptr);
 ef4_writeo_table(efx, &rx_desc_ptr, efx->type->rxd_ptr_tbl_base,
    ef4_rx_queue_index(rx_queue));


 ef4_fini_special_buffer(efx, &rx_queue->rxd);
}
