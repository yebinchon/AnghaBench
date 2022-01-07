
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status_error0; } ;
struct TYPE_3__ {int pkt_addr; } ;
union ice_32b_rx_flex_desc {TYPE_2__ wb; TYPE_1__ read; } ;
typedef size_t u16 ;
struct ice_rx_buf {scalar_t__ page_offset; scalar_t__ dma; } ;
struct ice_ring {size_t next_to_use; size_t count; struct ice_rx_buf* rx_buf; int dev; int netdev; } ;


 int DMA_FROM_DEVICE ;
 int ICE_RXBUF_2048 ;
 union ice_32b_rx_flex_desc* ICE_RX_DESC (struct ice_ring*,size_t) ;
 int cpu_to_le64 (scalar_t__) ;
 int dma_sync_single_range_for_device (int ,scalar_t__,scalar_t__,int ,int ) ;
 int ice_alloc_mapped_page (struct ice_ring*,struct ice_rx_buf*) ;
 int ice_release_rx_desc (struct ice_ring*,size_t) ;
 scalar_t__ unlikely (int) ;

bool ice_alloc_rx_bufs(struct ice_ring *rx_ring, u16 cleaned_count)
{
 union ice_32b_rx_flex_desc *rx_desc;
 u16 ntu = rx_ring->next_to_use;
 struct ice_rx_buf *bi;


 if (!rx_ring->netdev || !cleaned_count)
  return 0;


 rx_desc = ICE_RX_DESC(rx_ring, ntu);
 bi = &rx_ring->rx_buf[ntu];

 do {

  if (!ice_alloc_mapped_page(rx_ring, bi))
   break;


  dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
       bi->page_offset,
       ICE_RXBUF_2048,
       DMA_FROM_DEVICE);




  rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);

  rx_desc++;
  bi++;
  ntu++;
  if (unlikely(ntu == rx_ring->count)) {
   rx_desc = ICE_RX_DESC(rx_ring, 0);
   bi = rx_ring->rx_buf;
   ntu = 0;
  }


  rx_desc->wb.status_error0 = 0;

  cleaned_count--;
 } while (cleaned_count);

 if (rx_ring->next_to_use != ntu)
  ice_release_rx_desc(rx_ring, ntu);

 return !!cleaned_count;
}
