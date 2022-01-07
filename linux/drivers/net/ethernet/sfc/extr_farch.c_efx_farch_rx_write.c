
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {unsigned int notified_count; unsigned int added_count; int ptr_mask; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int EFX_POPULATE_DWORD_1 (int ,int ,unsigned int) ;
 int FRF_AZ_RX_DESC_WPTR_DWORD ;
 int FR_AZ_RX_DESC_UPD_DWORD_P0 ;
 int efx_farch_build_rx_desc (struct efx_rx_queue*,int) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_writed_page (struct efx_nic*,int *,int ,int ) ;
 int wmb () ;

void efx_farch_rx_write(struct efx_rx_queue *rx_queue)
{
 struct efx_nic *efx = rx_queue->efx;
 efx_dword_t reg;
 unsigned write_ptr;

 while (rx_queue->notified_count != rx_queue->added_count) {
  efx_farch_build_rx_desc(
   rx_queue,
   rx_queue->notified_count & rx_queue->ptr_mask);
  ++rx_queue->notified_count;
 }

 wmb();
 write_ptr = rx_queue->added_count & rx_queue->ptr_mask;
 EFX_POPULATE_DWORD_1(reg, FRF_AZ_RX_DESC_WPTR_DWORD, write_ptr);
 efx_writed_page(efx, &reg, FR_AZ_RX_DESC_UPD_DWORD_P0,
   efx_rx_queue_index(rx_queue));
}
