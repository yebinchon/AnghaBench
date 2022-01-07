
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct xdp_umem {scalar_t__ headroom; } ;
struct i40e_rx_buffer {int handle; void* addr; int dma; } ;
struct TYPE_2__ {int alloc_page_failed; int page_reuse_count; } ;
struct i40e_ring {TYPE_1__ rx_stats; struct xdp_umem* xsk_umem; } ;


 scalar_t__ XDP_PACKET_HEADROOM ;
 void* xdp_umem_get_data (struct xdp_umem*,scalar_t__) ;
 int xdp_umem_get_dma (struct xdp_umem*,scalar_t__) ;
 int xsk_umem_adjust_offset (struct xdp_umem*,scalar_t__,scalar_t__) ;
 int xsk_umem_discard_addr (struct xdp_umem*) ;
 int xsk_umem_peek_addr (struct xdp_umem*,scalar_t__*) ;

__attribute__((used)) static bool i40e_alloc_buffer_zc(struct i40e_ring *rx_ring,
     struct i40e_rx_buffer *bi)
{
 struct xdp_umem *umem = rx_ring->xsk_umem;
 void *addr = bi->addr;
 u64 handle, hr;

 if (addr) {
  rx_ring->rx_stats.page_reuse_count++;
  return 1;
 }

 if (!xsk_umem_peek_addr(umem, &handle)) {
  rx_ring->rx_stats.alloc_page_failed++;
  return 0;
 }

 hr = umem->headroom + XDP_PACKET_HEADROOM;

 bi->dma = xdp_umem_get_dma(umem, handle);
 bi->dma += hr;

 bi->addr = xdp_umem_get_data(umem, handle);
 bi->addr += hr;

 bi->handle = xsk_umem_adjust_offset(umem, handle, umem->headroom);

 xsk_umem_discard_addr(umem);
 return 1;
}
