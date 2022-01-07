
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int txd; int efx; } ;


 int ef4_free_special_buffer (int ,int *) ;

void ef4_farch_tx_remove(struct ef4_tx_queue *tx_queue)
{
 ef4_free_special_buffer(tx_queue->efx, &tx_queue->txd);
}
