
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ staterr; } ;
struct TYPE_3__ {int pkt_addr; } ;
union fm10k_rx_desc {TYPE_2__ d; TYPE_1__ q; } ;
typedef size_t u16 ;
struct fm10k_rx_buffer {scalar_t__ page_offset; scalar_t__ dma; } ;
struct fm10k_ring {size_t next_to_use; size_t next_to_alloc; int tail; scalar_t__ count; struct fm10k_rx_buffer* rx_buffer; } ;


 union fm10k_rx_desc* FM10K_RX_DESC (struct fm10k_ring*,size_t) ;
 int cpu_to_le64 (scalar_t__) ;
 int fm10k_alloc_mapped_page (struct fm10k_ring*,struct fm10k_rx_buffer*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (size_t,int ) ;

void fm10k_alloc_rx_buffers(struct fm10k_ring *rx_ring, u16 cleaned_count)
{
 union fm10k_rx_desc *rx_desc;
 struct fm10k_rx_buffer *bi;
 u16 i = rx_ring->next_to_use;


 if (!cleaned_count)
  return;

 rx_desc = FM10K_RX_DESC(rx_ring, i);
 bi = &rx_ring->rx_buffer[i];
 i -= rx_ring->count;

 do {
  if (!fm10k_alloc_mapped_page(rx_ring, bi))
   break;




  rx_desc->q.pkt_addr = cpu_to_le64(bi->dma + bi->page_offset);

  rx_desc++;
  bi++;
  i++;
  if (unlikely(!i)) {
   rx_desc = FM10K_RX_DESC(rx_ring, 0);
   bi = rx_ring->rx_buffer;
   i -= rx_ring->count;
  }


  rx_desc->d.staterr = 0;

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
