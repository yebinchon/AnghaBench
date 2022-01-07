
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int ptr_mask; int txd; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_qword_t ;


 int efx_alloc_special_buffer (struct efx_nic*,int *,unsigned int) ;

int efx_farch_tx_probe(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;
 unsigned entries;

 entries = tx_queue->ptr_mask + 1;
 return efx_alloc_special_buffer(efx, &tx_queue->txd,
     entries * sizeof(efx_qword_t));
}
