
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ status_error_len; } ;
struct TYPE_6__ {TYPE_2__ qword1; } ;
struct TYPE_4__ {int pkt_addr; } ;
union iavf_rx_desc {TYPE_3__ wb; TYPE_1__ read; } ;
typedef size_t u16 ;
struct iavf_rx_buffer {scalar_t__ page_offset; scalar_t__ dma; } ;
struct iavf_ring {size_t next_to_use; size_t count; struct iavf_rx_buffer* rx_bi; int rx_buf_len; int dev; int netdev; } ;


 int DMA_FROM_DEVICE ;
 union iavf_rx_desc* IAVF_RX_DESC (struct iavf_ring*,size_t) ;
 int cpu_to_le64 (scalar_t__) ;
 int dma_sync_single_range_for_device (int ,scalar_t__,scalar_t__,int ,int ) ;
 int iavf_alloc_mapped_page (struct iavf_ring*,struct iavf_rx_buffer*) ;
 int iavf_release_rx_desc (struct iavf_ring*,size_t) ;
 scalar_t__ unlikely (int) ;

bool iavf_alloc_rx_buffers(struct iavf_ring *rx_ring, u16 cleaned_count)
{
 u16 ntu = rx_ring->next_to_use;
 union iavf_rx_desc *rx_desc;
 struct iavf_rx_buffer *bi;


 if (!rx_ring->netdev || !cleaned_count)
  return 0;

 rx_desc = IAVF_RX_DESC(rx_ring, ntu);
 bi = &rx_ring->rx_bi[ntu];

 do {
  if (!iavf_alloc_mapped_page(rx_ring, bi))
   goto no_buffers;


  dma_sync_single_range_for_device(rx_ring->dev, bi->dma,
       bi->page_offset,
       rx_ring->rx_buf_len,
       DMA_FROM_DEVICE);




  rx_desc->read.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);

  rx_desc++;
  bi++;
  ntu++;
  if (unlikely(ntu == rx_ring->count)) {
   rx_desc = IAVF_RX_DESC(rx_ring, 0);
   bi = rx_ring->rx_bi;
   ntu = 0;
  }


  rx_desc->wb.qword1.status_error_len = 0;

  cleaned_count--;
 } while (cleaned_count);

 if (rx_ring->next_to_use != ntu)
  iavf_release_rx_desc(rx_ring, ntu);

 return 0;

no_buffers:
 if (rx_ring->next_to_use != ntu)
  iavf_release_rx_desc(rx_ring, ntu);




 return 1;
}
