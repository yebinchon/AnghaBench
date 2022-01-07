
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; } ;
struct TYPE_8__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef scalar_t__ u16 ;
struct xdp_buff {scalar_t__ data; scalar_t__ data_end; scalar_t__ data_hard_start; scalar_t__ data_meta; int * rxq; } ;
struct sk_buff {scalar_t__ len; } ;
struct ixgbe_rx_buffer {int pagecnt_bias; scalar_t__ page_offset; int page; } ;
struct TYPE_11__ {unsigned int packets; unsigned int bytes; } ;
struct TYPE_9__ {int alloc_rx_buff_failed; } ;
struct ixgbe_ring {int syncp; TYPE_5__ stats; int tail; int next_to_use; TYPE_4__* netdev; TYPE_3__ rx_stats; int next_to_clean; int xdp_rxq; } ;
struct TYPE_12__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbe_q_vector {TYPE_6__ rx; struct ixgbe_adapter* adapter; } ;
struct ixgbe_adapter {struct ixgbe_ring** xdp_ring; } ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct TYPE_10__ {int mtu; } ;


 scalar_t__ DIV_ROUND_UP (int,unsigned int) ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 scalar_t__ IXGBE_RX_BUFFER_WRITE ;
 union ixgbe_adv_rx_desc* IXGBE_RX_DESC (struct ixgbe_ring*,int ) ;
 unsigned int IXGBE_XDP_REDIR ;
 unsigned int IXGBE_XDP_TX ;
 unsigned int PTR_ERR (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_rmb () ;
 int ixgbe_add_rx_frag (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct sk_buff*,unsigned int) ;
 int ixgbe_alloc_rx_buffers (struct ixgbe_ring*,scalar_t__) ;
 struct sk_buff* ixgbe_build_skb (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ;
 scalar_t__ ixgbe_cleanup_headers (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 struct sk_buff* ixgbe_construct_skb (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct xdp_buff*,union ixgbe_adv_rx_desc*) ;
 scalar_t__ ixgbe_desc_unused (struct ixgbe_ring*) ;
 int ixgbe_fcoe_ddp (struct ixgbe_adapter*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 struct ixgbe_rx_buffer* ixgbe_get_rx_buffer (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff**,unsigned int) ;
 scalar_t__ ixgbe_is_non_eop (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbe_process_skb_fields (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbe_put_rx_buffer (struct ixgbe_ring*,struct ixgbe_rx_buffer*,struct sk_buff*) ;
 struct sk_buff* ixgbe_run_xdp (struct ixgbe_adapter*,struct ixgbe_ring*,struct xdp_buff*) ;
 int ixgbe_rx_buffer_flip (struct ixgbe_ring*,struct ixgbe_rx_buffer*,unsigned int) ;
 scalar_t__ ixgbe_rx_is_fcoe (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ;
 scalar_t__ ixgbe_rx_offset (struct ixgbe_ring*) ;
 int ixgbe_rx_skb (struct ixgbe_q_vector*,struct sk_buff*) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ page_address (int ) ;
 scalar_t__ ring_uses_build_skb (struct ixgbe_ring*) ;
 size_t smp_processor_id () ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 int wmb () ;
 int writel (int ,int ) ;
 int xdp_do_flush_map () ;

__attribute__((used)) static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
          struct ixgbe_ring *rx_ring,
          const int budget)
{
 unsigned int total_rx_bytes = 0, total_rx_packets = 0;
 struct ixgbe_adapter *adapter = q_vector->adapter;




 u16 cleaned_count = ixgbe_desc_unused(rx_ring);
 unsigned int xdp_xmit = 0;
 struct xdp_buff xdp;

 xdp.rxq = &rx_ring->xdp_rxq;

 while (likely(total_rx_packets < budget)) {
  union ixgbe_adv_rx_desc *rx_desc;
  struct ixgbe_rx_buffer *rx_buffer;
  struct sk_buff *skb;
  unsigned int size;


  if (cleaned_count >= IXGBE_RX_BUFFER_WRITE) {
   ixgbe_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = IXGBE_RX_DESC(rx_ring, rx_ring->next_to_clean);
  size = le16_to_cpu(rx_desc->wb.upper.length);
  if (!size)
   break;





  dma_rmb();

  rx_buffer = ixgbe_get_rx_buffer(rx_ring, rx_desc, &skb, size);


  if (!skb) {
   xdp.data = page_address(rx_buffer->page) +
       rx_buffer->page_offset;
   xdp.data_meta = xdp.data;
   xdp.data_hard_start = xdp.data -
           ixgbe_rx_offset(rx_ring);
   xdp.data_end = xdp.data + size;

   skb = ixgbe_run_xdp(adapter, rx_ring, &xdp);
  }

  if (IS_ERR(skb)) {
   unsigned int xdp_res = -PTR_ERR(skb);

   if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
    xdp_xmit |= xdp_res;
    ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
   } else {
    rx_buffer->pagecnt_bias++;
   }
   total_rx_packets++;
   total_rx_bytes += size;
  } else if (skb) {
   ixgbe_add_rx_frag(rx_ring, rx_buffer, skb, size);
  } else if (ring_uses_build_skb(rx_ring)) {
   skb = ixgbe_build_skb(rx_ring, rx_buffer,
           &xdp, rx_desc);
  } else {
   skb = ixgbe_construct_skb(rx_ring, rx_buffer,
        &xdp, rx_desc);
  }


  if (!skb) {
   rx_ring->rx_stats.alloc_rx_buff_failed++;
   rx_buffer->pagecnt_bias++;
   break;
  }

  ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb);
  cleaned_count++;


  if (ixgbe_is_non_eop(rx_ring, rx_desc, skb))
   continue;


  if (ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
   continue;


  total_rx_bytes += skb->len;


  ixgbe_process_skb_fields(rx_ring, rx_desc, skb);
  ixgbe_rx_skb(q_vector, skb);


  total_rx_packets++;
 }

 if (xdp_xmit & IXGBE_XDP_REDIR)
  xdp_do_flush_map();

 if (xdp_xmit & IXGBE_XDP_TX) {
  struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];




  wmb();
  writel(ring->next_to_use, ring->tail);
 }

 u64_stats_update_begin(&rx_ring->syncp);
 rx_ring->stats.packets += total_rx_packets;
 rx_ring->stats.bytes += total_rx_bytes;
 u64_stats_update_end(&rx_ring->syncp);
 q_vector->rx.total_packets += total_rx_packets;
 q_vector->rx.total_bytes += total_rx_bytes;

 return total_rx_packets;
}
