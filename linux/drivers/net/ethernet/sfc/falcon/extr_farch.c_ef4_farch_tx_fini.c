
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_tx_queue {int txd; int queue; struct ef4_nic* efx; } ;
struct ef4_nic {TYPE_1__* type; } ;
typedef int ef4_oword_t ;
struct TYPE_2__ {int txd_ptr_tbl_base; } ;


 int EF4_ZERO_OWORD (int ) ;
 int ef4_fini_special_buffer (struct ef4_nic*,int *) ;
 int ef4_writeo_table (struct ef4_nic*,int *,int ,int ) ;

void ef4_farch_tx_fini(struct ef4_tx_queue *tx_queue)
{
 struct ef4_nic *efx = tx_queue->efx;
 ef4_oword_t tx_desc_ptr;


 EF4_ZERO_OWORD(tx_desc_ptr);
 ef4_writeo_table(efx, &tx_desc_ptr, efx->type->txd_ptr_tbl_base,
    tx_queue->queue);


 ef4_fini_special_buffer(efx, &tx_queue->txd);
}
