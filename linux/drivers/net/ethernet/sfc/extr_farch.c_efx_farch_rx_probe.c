
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int ptr_mask; int rxd; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_qword_t ;


 int efx_alloc_special_buffer (struct efx_nic*,int *,unsigned int) ;

int efx_farch_rx_probe(struct efx_rx_queue *rx_queue)
{
 struct efx_nic *efx = rx_queue->efx;
 unsigned entries;

 entries = rx_queue->ptr_mask + 1;
 return efx_alloc_special_buffer(efx, &rx_queue->rxd,
     entries * sizeof(efx_qword_t));
}
