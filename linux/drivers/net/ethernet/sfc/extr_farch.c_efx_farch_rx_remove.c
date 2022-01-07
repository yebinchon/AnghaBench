
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int rxd; int efx; } ;


 int efx_free_special_buffer (int ,int *) ;

void efx_farch_rx_remove(struct efx_rx_queue *rx_queue)
{
 efx_free_special_buffer(rx_queue->efx, &rx_queue->rxd);
}
