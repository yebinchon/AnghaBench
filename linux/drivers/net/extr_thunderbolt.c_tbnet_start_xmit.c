
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct thunderbolt_ip_frame_header {void* frame_id; void* frame_index; void* frame_size; } ;
struct TYPE_9__ {unsigned int size; } ;
struct tbnet_frame {TYPE_4__ frame; int page; } ;
struct TYPE_7__ {unsigned int tx_bytes; int tx_errors; int tx_packets; } ;
struct TYPE_8__ {size_t cons; int ring; } ;
struct tbnet {TYPE_2__ stats; TYPE_3__ tx_ring; int frame_id; TYPE_1__* svc; int dev; } ;
struct sk_buff {unsigned int len; void* data; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;
struct TYPE_10__ {unsigned int nr_frags; } ;
struct TYPE_6__ {int prtcstns; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int MAX_SKB_FRAGS ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int TBNET_MATCH_FRAGS_ID ;
 unsigned int TBNET_MAX_PAYLOAD_SIZE ;
 int atomic_inc (int *) ;
 size_t atomic_read (int *) ;
 void* cpu_to_le16 (size_t) ;
 void* cpu_to_le32 (unsigned int) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,unsigned int) ;
 struct tbnet* netdev_priv (struct net_device*) ;
 int netif_stop_queue (int ) ;
 struct thunderbolt_ip_frame_header* page_address (int ) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 int tb_ring_tx (int ,TYPE_4__*) ;
 unsigned int tbnet_available_buffers (TYPE_3__*) ;
 struct tbnet_frame* tbnet_get_tx_buffer (struct tbnet*) ;
 void* tbnet_kmap_frag (struct sk_buff*,int ,unsigned int*) ;
 int tbnet_xmit_csum_and_map (struct tbnet*,struct sk_buff*,struct tbnet_frame**,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t tbnet_start_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct tbnet *net = netdev_priv(dev);
 struct tbnet_frame *frames[MAX_SKB_FRAGS];
 u16 frame_id = atomic_read(&net->frame_id);
 struct thunderbolt_ip_frame_header *hdr;
 unsigned int len = skb_headlen(skb);
 unsigned int data_len = skb->len;
 unsigned int nframes, i;
 unsigned int frag = 0;
 void *src = skb->data;
 u32 frame_index = 0;
 bool unmap = 0;
 void *dest;

 nframes = DIV_ROUND_UP(data_len, TBNET_MAX_PAYLOAD_SIZE);
 if (tbnet_available_buffers(&net->tx_ring) < nframes) {
  netif_stop_queue(net->dev);
  return NETDEV_TX_BUSY;
 }

 frames[frame_index] = tbnet_get_tx_buffer(net);
 if (!frames[frame_index])
  goto err_drop;

 hdr = page_address(frames[frame_index]->page);
 dest = hdr + 1;


 while (data_len > TBNET_MAX_PAYLOAD_SIZE) {
  unsigned int size_left = TBNET_MAX_PAYLOAD_SIZE;

  hdr->frame_size = cpu_to_le32(TBNET_MAX_PAYLOAD_SIZE);
  hdr->frame_index = cpu_to_le16(frame_index);
  hdr->frame_id = cpu_to_le16(frame_id);

  do {
   if (len > size_left) {




    memcpy(dest, src, size_left);
    len -= size_left;
    dest += size_left;
    src += size_left;
    break;
   }

   memcpy(dest, src, len);
   size_left -= len;
   dest += len;

   if (unmap) {
    kunmap_atomic(src);
    unmap = 0;
   }


   if (frag < skb_shinfo(skb)->nr_frags) {

    src = tbnet_kmap_frag(skb, frag++, &len);
    unmap = 1;
   } else if (unlikely(size_left > 0)) {
    goto err_drop;
   }
  } while (size_left > 0);

  data_len -= TBNET_MAX_PAYLOAD_SIZE;
  frame_index++;

  frames[frame_index] = tbnet_get_tx_buffer(net);
  if (!frames[frame_index])
   goto err_drop;

  hdr = page_address(frames[frame_index]->page);
  dest = hdr + 1;
 }

 hdr->frame_size = cpu_to_le32(data_len);
 hdr->frame_index = cpu_to_le16(frame_index);
 hdr->frame_id = cpu_to_le16(frame_id);

 frames[frame_index]->frame.size = data_len + sizeof(*hdr);


 while (len < data_len) {
  memcpy(dest, src, len);
  data_len -= len;
  dest += len;

  if (unmap) {
   kunmap_atomic(src);
   unmap = 0;
  }

  if (frag < skb_shinfo(skb)->nr_frags) {
   src = tbnet_kmap_frag(skb, frag++, &len);
   unmap = 1;
  } else if (unlikely(data_len > 0)) {
   goto err_drop;
  }
 }

 memcpy(dest, src, data_len);

 if (unmap)
  kunmap_atomic(src);

 if (!tbnet_xmit_csum_and_map(net, skb, frames, frame_index + 1))
  goto err_drop;

 for (i = 0; i < frame_index + 1; i++)
  tb_ring_tx(net->tx_ring.ring, &frames[i]->frame);

 if (net->svc->prtcstns & TBNET_MATCH_FRAGS_ID)
  atomic_inc(&net->frame_id);

 net->stats.tx_packets++;
 net->stats.tx_bytes += skb->len;

 dev_consume_skb_any(skb);

 return NETDEV_TX_OK;

err_drop:

 net->tx_ring.cons -= frame_index;

 dev_kfree_skb_any(skb);
 net->stats.tx_errors++;

 return NETDEV_TX_OK;
}
