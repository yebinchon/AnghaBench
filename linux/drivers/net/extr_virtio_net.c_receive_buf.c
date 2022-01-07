
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_rq_stats {int dummy; } ;
struct virtnet_info {unsigned int hdr_len; int vdev; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; struct net_device* dev; } ;
struct TYPE_4__ {int flags; int gso_size; int gso_type; } ;
struct virtio_net_hdr_mrg_rxbuf {TYPE_2__ hdr; } ;
struct sk_buff {int pkt_type; int len; int protocol; int ip_summed; } ;
struct receive_queue {int napi; int vq; } ;
struct TYPE_3__ {int rx_frame_errors; int rx_length_errors; } ;
struct net_device {TYPE_1__ stats; int name; } ;


 int CHECKSUM_UNNECESSARY ;
 unsigned int ETH_HLEN ;
 int VIRTIO_NET_HDR_F_DATA_VALID ;
 int dev_kfree_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int give_pages (struct receive_queue*,void*) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int net_warn_ratelimited (char*,int ,int ,int ) ;
 int ntohs (int ) ;
 int pr_debug (char*,int ,unsigned int,...) ;
 int put_page (int ) ;
 struct sk_buff* receive_big (struct net_device*,struct virtnet_info*,struct receive_queue*,void*,unsigned int,struct virtnet_rq_stats*) ;
 struct sk_buff* receive_mergeable (struct net_device*,struct virtnet_info*,struct receive_queue*,void*,void**,unsigned int,unsigned int*,struct virtnet_rq_stats*) ;
 struct sk_buff* receive_small (struct net_device*,struct virtnet_info*,struct receive_queue*,void*,void**,unsigned int,unsigned int*,struct virtnet_rq_stats*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 struct virtio_net_hdr_mrg_rxbuf* skb_vnet_hdr (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int virt_to_head_page (void*) ;
 int virtio_is_little_endian (int ) ;
 scalar_t__ virtio_net_hdr_to_skb (struct sk_buff*,TYPE_2__*,int ) ;
 int vq2rxq (int ) ;

__attribute__((used)) static void receive_buf(struct virtnet_info *vi, struct receive_queue *rq,
   void *buf, unsigned int len, void **ctx,
   unsigned int *xdp_xmit,
   struct virtnet_rq_stats *stats)
{
 struct net_device *dev = vi->dev;
 struct sk_buff *skb;
 struct virtio_net_hdr_mrg_rxbuf *hdr;

 if (unlikely(len < vi->hdr_len + ETH_HLEN)) {
  pr_debug("%s: short packet %i\n", dev->name, len);
  dev->stats.rx_length_errors++;
  if (vi->mergeable_rx_bufs) {
   put_page(virt_to_head_page(buf));
  } else if (vi->big_packets) {
   give_pages(rq, buf);
  } else {
   put_page(virt_to_head_page(buf));
  }
  return;
 }

 if (vi->mergeable_rx_bufs)
  skb = receive_mergeable(dev, vi, rq, buf, ctx, len, xdp_xmit,
     stats);
 else if (vi->big_packets)
  skb = receive_big(dev, vi, rq, buf, len, stats);
 else
  skb = receive_small(dev, vi, rq, buf, ctx, len, xdp_xmit, stats);

 if (unlikely(!skb))
  return;

 hdr = skb_vnet_hdr(skb);

 if (hdr->hdr.flags & VIRTIO_NET_HDR_F_DATA_VALID)
  skb->ip_summed = CHECKSUM_UNNECESSARY;

 if (virtio_net_hdr_to_skb(skb, &hdr->hdr,
      virtio_is_little_endian(vi->vdev))) {
  net_warn_ratelimited("%s: bad gso: type: %u, size: %u\n",
         dev->name, hdr->hdr.gso_type,
         hdr->hdr.gso_size);
  goto frame_err;
 }

 skb_record_rx_queue(skb, vq2rxq(rq->vq));
 skb->protocol = eth_type_trans(skb, dev);
 pr_debug("Receiving skb proto 0x%04x len %i type %i\n",
   ntohs(skb->protocol), skb->len, skb->pkt_type);

 napi_gro_receive(&rq->napi, skb);
 return;

frame_err:
 dev->stats.rx_frame_errors++;
 dev_kfree_skb(skb);
}
