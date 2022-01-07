
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ef4_rx_queue {unsigned int ptr_mask; int rx_packets; struct ef4_nic* efx; } ;
struct ef4_rx_buffer {int flags; unsigned int len; int page_offset; } ;
struct ef4_nic {unsigned int rx_dma_len; scalar_t__ rx_prefix_size; int net_dev; int rx_scatter; } ;
struct ef4_channel {unsigned int rx_pkt_n_frags; unsigned int rx_pkt_index; } ;


 unsigned int EF4_RX_MAX_FRAGS ;
 int EF4_RX_PKT_CSUMMED ;
 int EF4_RX_PKT_DISCARD ;
 int EF4_RX_PKT_PREFIX_LEN ;
 int WARN_ON (int) ;
 int ef4_discard_rx_packet (struct ef4_channel*,struct ef4_rx_buffer*,unsigned int) ;
 int ef4_recycle_rx_pages (struct ef4_channel*,struct ef4_rx_buffer*,unsigned int) ;
 struct ef4_rx_buffer* ef4_rx_buf_next (struct ef4_rx_queue*,struct ef4_rx_buffer*) ;
 int ef4_rx_buf_va (struct ef4_rx_buffer*) ;
 struct ef4_rx_buffer* ef4_rx_buffer (struct ef4_rx_queue*,unsigned int) ;
 int ef4_rx_flush_packet (struct ef4_channel*) ;
 int ef4_rx_packet__check_len (struct ef4_rx_queue*,struct ef4_rx_buffer*,unsigned int) ;
 struct ef4_channel* ef4_rx_queue_channel (struct ef4_rx_queue*) ;
 int ef4_rx_queue_index (struct ef4_rx_queue*) ;
 int ef4_sync_rx_buffer (struct ef4_nic*,struct ef4_rx_buffer*,unsigned int) ;
 int netif_vdbg (struct ef4_nic*,int ,int ,char*,int ,unsigned int,unsigned int,unsigned int,char*,char*) ;
 int prefetch (int ) ;
 int rx_status ;
 scalar_t__ unlikely (int) ;

void ef4_rx_packet(struct ef4_rx_queue *rx_queue, unsigned int index,
     unsigned int n_frags, unsigned int len, u16 flags)
{
 struct ef4_nic *efx = rx_queue->efx;
 struct ef4_channel *channel = ef4_rx_queue_channel(rx_queue);
 struct ef4_rx_buffer *rx_buf;

 rx_queue->rx_packets++;

 rx_buf = ef4_rx_buffer(rx_queue, index);
 rx_buf->flags |= flags;


 if (n_frags == 1) {
  if (!(flags & EF4_RX_PKT_PREFIX_LEN))
   ef4_rx_packet__check_len(rx_queue, rx_buf, len);
 } else if (unlikely(n_frags > EF4_RX_MAX_FRAGS) ||
     unlikely(len <= (n_frags - 1) * efx->rx_dma_len) ||
     unlikely(len > n_frags * efx->rx_dma_len) ||
     unlikely(!efx->rx_scatter)) {



  WARN_ON(!(len == 0 && rx_buf->flags & EF4_RX_PKT_DISCARD));
  rx_buf->flags |= EF4_RX_PKT_DISCARD;
 }

 netif_vdbg(efx, rx_status, efx->net_dev,
     "RX queue %d received ids %x-%x len %d %s%s\n",
     ef4_rx_queue_index(rx_queue), index,
     (index + n_frags - 1) & rx_queue->ptr_mask, len,
     (rx_buf->flags & EF4_RX_PKT_CSUMMED) ? " [SUMMED]" : "",
     (rx_buf->flags & EF4_RX_PKT_DISCARD) ? " [DISCARD]" : "");




 if (unlikely(rx_buf->flags & EF4_RX_PKT_DISCARD)) {
  ef4_rx_flush_packet(channel);
  ef4_discard_rx_packet(channel, rx_buf, n_frags);
  return;
 }

 if (n_frags == 1 && !(flags & EF4_RX_PKT_PREFIX_LEN))
  rx_buf->len = len;




 ef4_sync_rx_buffer(efx, rx_buf, rx_buf->len);




 prefetch(ef4_rx_buf_va(rx_buf));

 rx_buf->page_offset += efx->rx_prefix_size;
 rx_buf->len -= efx->rx_prefix_size;

 if (n_frags > 1) {



  unsigned int tail_frags = n_frags - 1;

  for (;;) {
   rx_buf = ef4_rx_buf_next(rx_queue, rx_buf);
   if (--tail_frags == 0)
    break;
   ef4_sync_rx_buffer(efx, rx_buf, efx->rx_dma_len);
  }
  rx_buf->len = len - (n_frags - 1) * efx->rx_dma_len;
  ef4_sync_rx_buffer(efx, rx_buf, rx_buf->len);
 }


 rx_buf = ef4_rx_buffer(rx_queue, index);
 ef4_recycle_rx_pages(channel, rx_buf, n_frags);




 ef4_rx_flush_packet(channel);
 channel->rx_pkt_n_frags = n_frags;
 channel->rx_pkt_index = index;
}
