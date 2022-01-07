
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_rx_queue {int * buffer; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int drv ;
 int ef4_nic_remove_rx (struct ef4_rx_queue*) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int kfree (int *) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

void ef4_remove_rx_queue(struct ef4_rx_queue *rx_queue)
{
 netif_dbg(rx_queue->efx, drv, rx_queue->efx->net_dev,
    "destroying RX queue %d\n", ef4_rx_queue_index(rx_queue));

 ef4_nic_remove_rx(rx_queue);

 kfree(rx_queue->buffer);
 rx_queue->buffer = ((void*)0);
}
