
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int rxd; int efx; } ;


 int ef4_free_special_buffer (int ,int *) ;

void ef4_farch_rx_remove(struct ef4_rx_queue *rx_queue)
{
 ef4_free_special_buffer(rx_queue->efx, &rx_queue->rxd);
}
