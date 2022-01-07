
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {struct efx_nic* efx; } ;
struct efx_nic {int net_dev; } ;


 int RESET_TYPE_DISABLE ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int hw ;
 int netif_info (struct efx_nic*,int ,int ,char*,int ,unsigned int) ;

__attribute__((used)) static void efx_ef10_handle_rx_wrong_queue(struct efx_rx_queue *rx_queue,
        unsigned int rx_queue_label)
{
 struct efx_nic *efx = rx_queue->efx;

 netif_info(efx, hw, efx->net_dev,
     "rx event arrived on queue %d labeled as queue %u\n",
     efx_rx_queue_index(rx_queue), rx_queue_label);

 efx_schedule_reset(efx, RESET_TYPE_DISABLE);
}
