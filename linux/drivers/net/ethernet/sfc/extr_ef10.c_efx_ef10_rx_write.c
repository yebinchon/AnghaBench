
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int added_count; unsigned int notified_count; int ptr_mask; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_dword_t ;


 int EFX_POPULATE_DWORD_1 (int ,int ,unsigned int) ;
 int ERF_DZ_RX_DESC_WPTR ;
 int ER_DZ_RX_DESC_UPD ;
 int efx_ef10_build_rx_desc (struct efx_rx_queue*,int) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_writed_page (struct efx_nic*,int *,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void efx_ef10_rx_write(struct efx_rx_queue *rx_queue)
{
 struct efx_nic *efx = rx_queue->efx;
 unsigned int write_count;
 efx_dword_t reg;


 write_count = rx_queue->added_count & ~7;
 if (rx_queue->notified_count == write_count)
  return;

 do
  efx_ef10_build_rx_desc(
   rx_queue,
   rx_queue->notified_count & rx_queue->ptr_mask);
 while (++rx_queue->notified_count != write_count);

 wmb();
 EFX_POPULATE_DWORD_1(reg, ERF_DZ_RX_DESC_WPTR,
        write_count & rx_queue->ptr_mask);
 efx_writed_page(efx, &reg, ER_DZ_RX_DESC_UPD,
   efx_rx_queue_index(rx_queue));
}
