
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_page_state {int dummy; } ;
struct ef4_nic {int rx_page_buf_step; int rx_bufs_per_page; int rx_buffer_order; int rx_buffer_truesize; int rx_pages_per_batch; scalar_t__ rx_ip_align; scalar_t__ rx_dma_len; } ;


 int ALIGN (scalar_t__,int ) ;
 int DIV_ROUND_UP (int ,int) ;
 int EF4_RX_BUF_ALIGNMENT ;
 int EF4_RX_PREFERRED_BATCH ;
 int PAGE_SIZE ;

void ef4_rx_config_page_split(struct ef4_nic *efx)
{
 efx->rx_page_buf_step = ALIGN(efx->rx_dma_len + efx->rx_ip_align,
          EF4_RX_BUF_ALIGNMENT);
 efx->rx_bufs_per_page = efx->rx_buffer_order ? 1 :
  ((PAGE_SIZE - sizeof(struct ef4_rx_page_state)) /
   efx->rx_page_buf_step);
 efx->rx_buffer_truesize = (PAGE_SIZE << efx->rx_buffer_order) /
  efx->rx_bufs_per_page;
 efx->rx_pages_per_batch = DIV_ROUND_UP(EF4_RX_PREFERRED_BATCH,
            efx->rx_bufs_per_page);
}
