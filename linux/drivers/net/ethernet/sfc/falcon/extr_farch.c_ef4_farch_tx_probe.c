
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int ptr_mask; int txd; struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef int ef4_qword_t ;


 int ef4_alloc_special_buffer (struct ef4_nic*,int *,unsigned int) ;

int ef4_farch_tx_probe(struct ef4_tx_queue *tx_queue)
{
 struct ef4_nic *efx = tx_queue->efx;
 unsigned entries;

 entries = tx_queue->ptr_mask + 1;
 return ef4_alloc_special_buffer(efx, &tx_queue->txd,
     entries * sizeof(ef4_qword_t));
}
