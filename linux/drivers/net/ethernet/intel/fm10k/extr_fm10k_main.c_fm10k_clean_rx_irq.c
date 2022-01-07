
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int staterr; } ;
union fm10k_rx_desc {TYPE_1__ d; } ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {unsigned int packets; unsigned int bytes; } ;
struct fm10k_ring {int syncp; TYPE_2__ stats; struct sk_buff* skb; int next_to_clean; } ;
struct TYPE_6__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct fm10k_q_vector {TYPE_3__ rx; } ;


 scalar_t__ FM10K_RX_BUFFER_WRITE ;
 union fm10k_rx_desc* FM10K_RX_DESC (struct fm10k_ring*,int ) ;
 int dma_rmb () ;
 int fm10k_alloc_rx_buffers (struct fm10k_ring*,scalar_t__) ;
 scalar_t__ fm10k_cleanup_headers (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ;
 scalar_t__ fm10k_desc_unused (struct fm10k_ring*) ;
 struct sk_buff* fm10k_fetch_rx_buffer (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ;
 scalar_t__ fm10k_is_non_eop (struct fm10k_ring*,union fm10k_rx_desc*) ;
 scalar_t__ fm10k_process_skb_fields (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ;
 int fm10k_receive_skb (struct fm10k_q_vector*,struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static int fm10k_clean_rx_irq(struct fm10k_q_vector *q_vector,
         struct fm10k_ring *rx_ring,
         int budget)
{
 struct sk_buff *skb = rx_ring->skb;
 unsigned int total_bytes = 0, total_packets = 0;
 u16 cleaned_count = fm10k_desc_unused(rx_ring);

 while (likely(total_packets < budget)) {
  union fm10k_rx_desc *rx_desc;


  if (cleaned_count >= FM10K_RX_BUFFER_WRITE) {
   fm10k_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = FM10K_RX_DESC(rx_ring, rx_ring->next_to_clean);

  if (!rx_desc->d.staterr)
   break;





  dma_rmb();


  skb = fm10k_fetch_rx_buffer(rx_ring, rx_desc, skb);


  if (!skb)
   break;

  cleaned_count++;


  if (fm10k_is_non_eop(rx_ring, rx_desc))
   continue;


  if (fm10k_cleanup_headers(rx_ring, rx_desc, skb)) {
   skb = ((void*)0);
   continue;
  }


  total_bytes += fm10k_process_skb_fields(rx_ring, rx_desc, skb);

  fm10k_receive_skb(q_vector, skb);


  skb = ((void*)0);


  total_packets++;
 }


 rx_ring->skb = skb;

 u64_stats_update_begin(&rx_ring->syncp);
 rx_ring->stats.packets += total_packets;
 rx_ring->stats.bytes += total_bytes;
 u64_stats_update_end(&rx_ring->syncp);
 q_vector->rx.total_packets += total_packets;
 q_vector->rx.total_bytes += total_bytes;

 return total_packets;
}
