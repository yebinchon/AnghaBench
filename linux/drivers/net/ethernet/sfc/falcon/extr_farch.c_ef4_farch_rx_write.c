
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {unsigned int notified_count; unsigned int added_count; int ptr_mask; struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
typedef int ef4_dword_t ;


 int EF4_POPULATE_DWORD_1 (int ,int ,unsigned int) ;
 int FRF_AZ_RX_DESC_WPTR_DWORD ;
 int FR_AZ_RX_DESC_UPD_DWORD_P0 ;
 int ef4_farch_build_rx_desc (struct ef4_rx_queue*,int) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_writed_page (struct ef4_nic*,int *,int ,int ) ;
 int wmb () ;

void ef4_farch_rx_write(struct ef4_rx_queue *rx_queue)
{
 struct ef4_nic *efx = rx_queue->efx;
 ef4_dword_t reg;
 unsigned write_ptr;

 while (rx_queue->notified_count != rx_queue->added_count) {
  ef4_farch_build_rx_desc(
   rx_queue,
   rx_queue->notified_count & rx_queue->ptr_mask);
  ++rx_queue->notified_count;
 }

 wmb();
 write_ptr = rx_queue->added_count & rx_queue->ptr_mask;
 EF4_POPULATE_DWORD_1(reg, FRF_AZ_RX_DESC_WPTR_DWORD, write_ptr);
 ef4_writed_page(efx, &reg, FR_AZ_RX_DESC_UPD_DWORD_P0,
   ef4_rx_queue_index(rx_queue));
}
