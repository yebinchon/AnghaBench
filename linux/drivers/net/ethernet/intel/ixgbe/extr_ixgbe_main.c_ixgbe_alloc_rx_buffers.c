
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__ upper; } ;
struct TYPE_4__ {int pkt_addr; } ;
union ixgbe_adv_rx_desc {TYPE_3__ wb; TYPE_1__ read; } ;
typedef size_t u16 ;
struct ixgbe_rx_buffer {scalar_t__ page_offset; scalar_t__ dma; } ;
struct ixgbe_ring {size_t next_to_use; size_t next_to_alloc; int tail; scalar_t__ count; struct ixgbe_rx_buffer* rx_buffer_info; int dev; } ;


 int DMA_FROM_DEVICE ;
 union ixgbe_adv_rx_desc* IXGBE_RX_DESC (struct ixgbe_ring*,size_t) ;
 int cpu_to_le64 (scalar_t__) ;
 int dma_sync_single_range_for_device (int ,scalar_t__,scalar_t__,size_t,int ) ;
 int ixgbe_alloc_mapped_page (struct ixgbe_ring*,struct ixgbe_rx_buffer*) ;
 size_t ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (size_t,int ) ;

void ixgbe_alloc_rx_buffers(struct ixgbe_ring *rx_ring, u16 cleaned_count)
{
 union ixgbe_adv_rx_desc *rx_desc;
 struct ixgbe_rx_buffer *bi;
 u16 i = rx_ring->next_to_use;
 u16 bufsz;


 if (!cleaned_count)
  return;

 rx_desc = IXGBE_RX_DESC(rx_ring, i);
 bi = &rx_ring->rx_buffer_info[i];
 i -= rx_ring->count;

 bufsz = ixgbe_rx_bufsz(rx_ring);

 do {
  if (!ixgbe_alloc_mapped_page(rx_ring, bi))
   break;


  dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
       bi->page_offset, bufsz,
       DMA_FROM_DEVICE);





  rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);

  rx_desc++;
  bi++;
  i++;
  if (unlikely(!i)) {
   rx_desc = IXGBE_RX_DESC(rx_ring, 0);
   bi = rx_ring->rx_buffer_info;
   i -= rx_ring->count;
  }


  rx_desc->wb.upper.length = 0;

  cleaned_count--;
 } while (cleaned_count);

 i += rx_ring->count;

 if (rx_ring->next_to_use != i) {
  rx_ring->next_to_use = i;


  rx_ring->next_to_alloc = i;






  wmb();
  writel(i, rx_ring->tail);
 }
}
