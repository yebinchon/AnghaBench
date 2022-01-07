
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int ptr_mask; int rxd; struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef int ef4_qword_t ;


 int ef4_alloc_special_buffer (struct ef4_nic*,int *,unsigned int) ;

int ef4_farch_rx_probe(struct ef4_rx_queue *rx_queue)
{
 struct ef4_nic *efx = rx_queue->efx;
 unsigned entries;

 entries = rx_queue->ptr_mask + 1;
 return ef4_alloc_special_buffer(efx, &rx_queue->rxd,
     entries * sizeof(ef4_qword_t));
}
