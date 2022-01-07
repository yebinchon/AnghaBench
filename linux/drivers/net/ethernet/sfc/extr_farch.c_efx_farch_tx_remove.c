
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int txd; int efx; } ;


 int efx_free_special_buffer (int ,int *) ;

void efx_farch_tx_remove(struct efx_tx_queue *tx_queue)
{
 efx_free_special_buffer(tx_queue->efx, &tx_queue->txd);
}
