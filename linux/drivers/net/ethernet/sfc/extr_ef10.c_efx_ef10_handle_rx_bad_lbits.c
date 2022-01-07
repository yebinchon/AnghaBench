
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {unsigned int ptr_mask; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; } ;


 int RESET_TYPE_DISABLE ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int hw ;
 int netif_info (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
efx_ef10_handle_rx_bad_lbits(struct efx_rx_queue *rx_queue,
        unsigned int actual, unsigned int expected)
{
 unsigned int dropped = (actual - expected) & rx_queue->ptr_mask;
 struct efx_nic *efx = rx_queue->efx;

 netif_info(efx, hw, efx->net_dev,
     "dropped %d events (index=%d expected=%d)\n",
     dropped, actual, expected);

 efx_schedule_reset(efx, RESET_TYPE_DISABLE);
}
