
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
struct TYPE_6__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct igb_rx_buffer {int pagecnt_bias; } ;
struct TYPE_7__ {unsigned int packets; unsigned int bytes; int alloc_failed; } ;
struct igb_ring {int rx_syncp; TYPE_3__ rx_stats; struct sk_buff* skb; int next_to_clean; } ;
struct TYPE_8__ {unsigned int total_packets; unsigned int total_bytes; struct igb_ring* ring; } ;
struct igb_q_vector {TYPE_4__ rx; int napi; } ;


 scalar_t__ IGB_RX_BUFFER_WRITE ;
 union e1000_adv_rx_desc* IGB_RX_DESC (struct igb_ring*,int ) ;
 int dma_rmb () ;
 int igb_add_rx_frag (struct igb_ring*,struct igb_rx_buffer*,struct sk_buff*,unsigned int) ;
 int igb_alloc_rx_buffers (struct igb_ring*,scalar_t__) ;
 struct sk_buff* igb_build_skb (struct igb_ring*,struct igb_rx_buffer*,union e1000_adv_rx_desc*,unsigned int) ;
 scalar_t__ igb_cleanup_headers (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 struct sk_buff* igb_construct_skb (struct igb_ring*,struct igb_rx_buffer*,union e1000_adv_rx_desc*,unsigned int) ;
 scalar_t__ igb_desc_unused (struct igb_ring*) ;
 struct igb_rx_buffer* igb_get_rx_buffer (struct igb_ring*,unsigned int) ;
 scalar_t__ igb_is_non_eop (struct igb_ring*,union e1000_adv_rx_desc*) ;
 int igb_process_skb_fields (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 int igb_put_rx_buffer (struct igb_ring*,struct igb_rx_buffer*) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 scalar_t__ ring_uses_build_skb (struct igb_ring*) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
{
 struct igb_ring *rx_ring = q_vector->rx.ring;
 struct sk_buff *skb = rx_ring->skb;
 unsigned int total_bytes = 0, total_packets = 0;
 u16 cleaned_count = igb_desc_unused(rx_ring);

 while (likely(total_packets < budget)) {
  union e1000_adv_rx_desc *rx_desc;
  struct igb_rx_buffer *rx_buffer;
  unsigned int size;


  if (cleaned_count >= IGB_RX_BUFFER_WRITE) {
   igb_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = IGB_RX_DESC(rx_ring, rx_ring->next_to_clean);
  size = le16_to_cpu(rx_desc->wb.upper.length);
  if (!size)
   break;





  dma_rmb();

  rx_buffer = igb_get_rx_buffer(rx_ring, size);


  if (skb)
   igb_add_rx_frag(rx_ring, rx_buffer, skb, size);
  else if (ring_uses_build_skb(rx_ring))
   skb = igb_build_skb(rx_ring, rx_buffer, rx_desc, size);
  else
   skb = igb_construct_skb(rx_ring, rx_buffer,
      rx_desc, size);


  if (!skb) {
   rx_ring->rx_stats.alloc_failed++;
   rx_buffer->pagecnt_bias++;
   break;
  }

  igb_put_rx_buffer(rx_ring, rx_buffer);
  cleaned_count++;


  if (igb_is_non_eop(rx_ring, rx_desc))
   continue;


  if (igb_cleanup_headers(rx_ring, rx_desc, skb)) {
   skb = ((void*)0);
   continue;
  }


  total_bytes += skb->len;


  igb_process_skb_fields(rx_ring, rx_desc, skb);

  napi_gro_receive(&q_vector->napi, skb);


  skb = ((void*)0);


  total_packets++;
 }


 rx_ring->skb = skb;

 u64_stats_update_begin(&rx_ring->rx_syncp);
 rx_ring->rx_stats.packets += total_packets;
 rx_ring->rx_stats.bytes += total_bytes;
 u64_stats_update_end(&rx_ring->rx_syncp);
 q_vector->rx.total_packets += total_packets;
 q_vector->rx.total_bytes += total_bytes;

 if (cleaned_count)
  igb_alloc_rx_buffers(rx_ring, cleaned_count);

 return total_packets;
}
