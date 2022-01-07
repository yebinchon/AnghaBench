
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct efx_rx_queue {TYPE_1__ rxd; int efx; } ;


 int efx_nic_free_buffer (int ,int *) ;

__attribute__((used)) static void efx_ef10_rx_remove(struct efx_rx_queue *rx_queue)
{
 efx_nic_free_buffer(rx_queue->efx, &rx_queue->rxd.buf);
}
