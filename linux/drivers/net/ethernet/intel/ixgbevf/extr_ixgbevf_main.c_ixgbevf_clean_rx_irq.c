
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int length; } ;
struct TYPE_9__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef scalar_t__ u16 ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_end; scalar_t__ data_hard_start; scalar_t__ data_meta; int * rxq; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; } ;
struct ixgbevf_rx_buffer {int pagecnt_bias; scalar_t__ page_offset; int page; } ;
struct TYPE_12__ {unsigned int packets; unsigned int bytes; } ;
struct TYPE_10__ {int alloc_rx_buff_failed; } ;
struct ixgbevf_ring {size_t queue_index; int syncp; TYPE_5__ stats; int next_to_use; struct sk_buff* skb; TYPE_4__* netdev; TYPE_3__ rx_stats; int next_to_clean; int xdp_rxq; } ;
struct TYPE_13__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbevf_q_vector {TYPE_6__ rx; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** xdp_ring; } ;
struct TYPE_14__ {int h_source; } ;
struct TYPE_11__ {int dev_addr; } ;


 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ IXGBEVF_RX_BUFFER_WRITE ;
 union ixgbe_adv_rx_desc* IXGBEVF_RX_DESC (struct ixgbevf_ring*,int ) ;
 int IXGBEVF_XDP_TX ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_MULTICAST ;
 int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 TYPE_7__* eth_hdr (struct sk_buff*) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ixgbevf_add_rx_frag (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct sk_buff*,unsigned int) ;
 int ixgbevf_alloc_rx_buffers (struct ixgbevf_ring*,scalar_t__) ;
 struct sk_buff* ixgbevf_build_skb (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ;
 scalar_t__ ixgbevf_cleanup_headers (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 struct sk_buff* ixgbevf_construct_skb (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ;
 scalar_t__ ixgbevf_desc_unused (struct ixgbevf_ring*) ;
 struct ixgbevf_rx_buffer* ixgbevf_get_rx_buffer (struct ixgbevf_ring*,unsigned int) ;
 scalar_t__ ixgbevf_is_non_eop (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*) ;
 int ixgbevf_process_skb_fields (struct ixgbevf_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbevf_put_rx_buffer (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,struct sk_buff*) ;
 struct sk_buff* ixgbevf_run_xdp (struct ixgbevf_adapter*,struct ixgbevf_ring*,struct xdp_buff*) ;
 int ixgbevf_rx_buffer_flip (struct ixgbevf_ring*,struct ixgbevf_rx_buffer*,unsigned int) ;
 scalar_t__ ixgbevf_rx_offset (struct ixgbevf_ring*) ;
 int ixgbevf_rx_skb (struct ixgbevf_q_vector*,struct sk_buff*) ;
 int ixgbevf_write_tail (struct ixgbevf_ring*,int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ page_address (int ) ;
 scalar_t__ ring_uses_build_skb (struct ixgbevf_ring*) ;
 int rmb () ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int wmb () ;

__attribute__((used)) static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
    struct ixgbevf_ring *rx_ring,
    int budget)
{
 unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 struct ixgbevf_adapter *adapter = q_vector->adapter;
 u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
 struct sk_buff *skb = rx_ring->skb;
 bool xdp_xmit = 0;
 struct xdp_buff xdp;

 xdp.rxq = &rx_ring->xdp_rxq;

 while (likely(total_rx_packets < budget)) {
  struct ixgbevf_rx_buffer *rx_buffer;
  union ixgbe_adv_rx_desc *rx_desc;
  unsigned int size;


  if (cleaned_count >= IXGBEVF_RX_BUFFER_WRITE) {
   ixgbevf_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = IXGBEVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
  size = le16_to_cpu(rx_desc->wb.upper.length);
  if (!size)
   break;





  rmb();

  rx_buffer = ixgbevf_get_rx_buffer(rx_ring, size);


  if (!skb) {
   xdp.data = page_address(rx_buffer->page) +
       rx_buffer->page_offset;
   xdp.data_meta = xdp.data;
   xdp.data_hard_start = xdp.data -
           ixgbevf_rx_offset(rx_ring);
   xdp.data_end = xdp.data + size;

   skb = ixgbevf_run_xdp(adapter, rx_ring, &xdp);
  }

  if (IS_ERR(skb)) {
   if (PTR_ERR(skb) == -IXGBEVF_XDP_TX) {
    xdp_xmit = 1;
    ixgbevf_rx_buffer_flip(rx_ring, rx_buffer,
             size);
   } else {
    rx_buffer->pagecnt_bias++;
   }
   total_rx_packets++;
   total_rx_bytes += size;
  } else if (skb) {
   ixgbevf_add_rx_frag(rx_ring, rx_buffer, skb, size);
  } else if (ring_uses_build_skb(rx_ring)) {
   skb = ixgbevf_build_skb(rx_ring, rx_buffer,
      &xdp, rx_desc);
  } else {
   skb = ixgbevf_construct_skb(rx_ring, rx_buffer,
          &xdp, rx_desc);
  }


  if (!skb) {
   rx_ring->rx_stats.alloc_rx_buff_failed++;
   rx_buffer->pagecnt_bias++;
   break;
  }

  ixgbevf_put_rx_buffer(rx_ring, rx_buffer, skb);
  cleaned_count++;


  if (ixgbevf_is_non_eop(rx_ring, rx_desc))
   continue;


  if (ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
   skb = ((void*)0);
   continue;
  }


  total_rx_bytes += skb->len;




  if ((skb->pkt_type == PACKET_BROADCAST ||
       skb->pkt_type == PACKET_MULTICAST) &&
      ether_addr_equal(rx_ring->netdev->dev_addr,
         eth_hdr(skb)->h_source)) {
   dev_kfree_skb_irq(skb);
   continue;
  }


  ixgbevf_process_skb_fields(rx_ring, rx_desc, skb);

  ixgbevf_rx_skb(q_vector, skb);


  skb = ((void*)0);


  total_rx_packets++;
 }


 rx_ring->skb = skb;

 if (xdp_xmit) {
  struct ixgbevf_ring *xdp_ring =
   adapter->xdp_ring[rx_ring->queue_index];




  wmb();
  ixgbevf_write_tail(xdp_ring, xdp_ring->next_to_use);
 }

 u64_stats_update_begin(&rx_ring->syncp);
 rx_ring->stats.packets += total_rx_packets;
 rx_ring->stats.bytes += total_rx_bytes;
 u64_stats_update_end(&rx_ring->syncp);
 q_vector->rx.total_packets += total_rx_packets;
 q_vector->rx.total_bytes += total_rx_bytes;

 return total_rx_packets;
}
