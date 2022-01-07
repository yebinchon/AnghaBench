
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {unsigned int truesize; int len; int data_len; int ip_summed; } ;
struct napi_struct {int dummy; } ;
struct ef4_rx_queue {int dummy; } ;
struct ef4_rx_buffer {int flags; int len; int * page; int page_offset; } ;
struct ef4_nic {unsigned int rx_buffer_truesize; TYPE_1__* net_dev; } ;
struct TYPE_6__ {int core_index; } ;
struct ef4_channel {TYPE_3__ rx_queue; struct ef4_nic* efx; struct napi_struct napi_str; } ;
struct TYPE_5__ {unsigned int nr_frags; } ;
struct TYPE_4__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int EF4_RX_PKT_CSUMMED ;
 int NETIF_F_RXHASH ;
 int PKT_HASH_TYPE_L3 ;
 struct ef4_rx_queue* ef4_channel_get_rx_queue (struct ef4_channel*) ;
 int ef4_free_rx_buffers (struct ef4_rx_queue*,struct ef4_rx_buffer*,unsigned int) ;
 int ef4_rx_buf_hash (struct ef4_nic*,int *) ;
 struct ef4_rx_buffer* ef4_rx_buf_next (TYPE_3__*,struct ef4_rx_buffer*) ;
 struct sk_buff* napi_get_frags (struct napi_struct*) ;
 int napi_gro_frags (struct napi_struct*) ;
 int skb_fill_page_desc (struct sk_buff*,unsigned int,int *,int ,int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ef4_rx_packet_gro(struct ef4_channel *channel, struct ef4_rx_buffer *rx_buf,
    unsigned int n_frags, u8 *eh)
{
 struct napi_struct *napi = &channel->napi_str;
 struct ef4_nic *efx = channel->efx;
 struct sk_buff *skb;

 skb = napi_get_frags(napi);
 if (unlikely(!skb)) {
  struct ef4_rx_queue *rx_queue;

  rx_queue = ef4_channel_get_rx_queue(channel);
  ef4_free_rx_buffers(rx_queue, rx_buf, n_frags);
  return;
 }

 if (efx->net_dev->features & NETIF_F_RXHASH)
  skb_set_hash(skb, ef4_rx_buf_hash(efx, eh),
        PKT_HASH_TYPE_L3);
 skb->ip_summed = ((rx_buf->flags & EF4_RX_PKT_CSUMMED) ?
     CHECKSUM_UNNECESSARY : CHECKSUM_NONE);

 for (;;) {
  skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags,
       rx_buf->page, rx_buf->page_offset,
       rx_buf->len);
  rx_buf->page = ((void*)0);
  skb->len += rx_buf->len;
  if (skb_shinfo(skb)->nr_frags == n_frags)
   break;

  rx_buf = ef4_rx_buf_next(&channel->rx_queue, rx_buf);
 }

 skb->data_len = skb->len;
 skb->truesize += n_frags * efx->rx_buffer_truesize;

 skb_record_rx_queue(skb, channel->rx_queue.core_index);

 napi_gro_frags(napi);
}
