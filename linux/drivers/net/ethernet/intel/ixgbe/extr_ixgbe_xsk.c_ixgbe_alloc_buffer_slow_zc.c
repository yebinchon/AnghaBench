
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct xdp_umem {scalar_t__ headroom; scalar_t__ chunk_mask; } ;
struct ixgbe_rx_buffer {int handle; int addr; int dma; } ;
struct TYPE_2__ {int alloc_rx_page_failed; } ;
struct ixgbe_ring {struct xdp_umem* xsk_umem; TYPE_1__ rx_stats; } ;


 scalar_t__ XDP_PACKET_HEADROOM ;
 int xdp_umem_get_data (struct xdp_umem*,scalar_t__) ;
 int xdp_umem_get_dma (struct xdp_umem*,scalar_t__) ;
 int xsk_umem_adjust_offset (struct xdp_umem*,scalar_t__,scalar_t__) ;
 int xsk_umem_discard_addr_rq (struct xdp_umem*) ;
 int xsk_umem_peek_addr_rq (struct xdp_umem*,scalar_t__*) ;

__attribute__((used)) static bool ixgbe_alloc_buffer_slow_zc(struct ixgbe_ring *rx_ring,
           struct ixgbe_rx_buffer *bi)
{
 struct xdp_umem *umem = rx_ring->xsk_umem;
 u64 handle, hr;

 if (!xsk_umem_peek_addr_rq(umem, &handle)) {
  rx_ring->rx_stats.alloc_rx_page_failed++;
  return 0;
 }

 handle &= rx_ring->xsk_umem->chunk_mask;

 hr = umem->headroom + XDP_PACKET_HEADROOM;

 bi->dma = xdp_umem_get_dma(umem, handle);
 bi->dma += hr;

 bi->addr = xdp_umem_get_data(umem, handle);
 bi->addr += hr;

 bi->handle = xsk_umem_adjust_offset(umem, handle, umem->headroom);

 xsk_umem_discard_addr_rq(umem);
 return 1;
}
