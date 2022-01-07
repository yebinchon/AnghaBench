
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdp_frame {scalar_t__ len; } ;
struct virtnet_info {struct receive_queue* rq; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int bytes; int packets; int xdp_tx; int xdp_tx_drops; int kicks; int syncp; } ;
struct send_queue {TYPE_1__ stats; int vq; } ;
struct receive_queue {int xdp_prog; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 int XDP_XMIT_FLAGS_MASK ;
 int XDP_XMIT_FLUSH ;
 int __virtnet_xdp_xmit_one (struct virtnet_info*,struct send_queue*,struct xdp_frame*) ;
 int is_xdp_frame (void*) ;
 scalar_t__ likely (int ) ;
 int napi_consume_skb (struct sk_buff*,int) ;
 struct virtnet_info* netdev_priv (struct net_device*) ;
 struct xdp_frame* ptr_to_xdp (void*) ;
 struct bpf_prog* rcu_dereference (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;
 struct send_queue* virtnet_xdp_sq (struct virtnet_info*) ;
 void* virtqueue_get_buf (int ,unsigned int*) ;
 scalar_t__ virtqueue_kick_prepare (int ) ;
 scalar_t__ virtqueue_notify (int ) ;
 int xdp_return_frame (struct xdp_frame*) ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

__attribute__((used)) static int virtnet_xdp_xmit(struct net_device *dev,
       int n, struct xdp_frame **frames, u32 flags)
{
 struct virtnet_info *vi = netdev_priv(dev);
 struct receive_queue *rq = vi->rq;
 struct bpf_prog *xdp_prog;
 struct send_queue *sq;
 unsigned int len;
 int packets = 0;
 int bytes = 0;
 int drops = 0;
 int kicks = 0;
 int ret, err;
 void *ptr;
 int i;




 xdp_prog = rcu_dereference(rq->xdp_prog);
 if (!xdp_prog)
  return -ENXIO;

 sq = virtnet_xdp_sq(vi);

 if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK)) {
  ret = -EINVAL;
  drops = n;
  goto out;
 }


 while ((ptr = virtqueue_get_buf(sq->vq, &len)) != ((void*)0)) {
  if (likely(is_xdp_frame(ptr))) {
   struct xdp_frame *frame = ptr_to_xdp(ptr);

   bytes += frame->len;
   xdp_return_frame(frame);
  } else {
   struct sk_buff *skb = ptr;

   bytes += skb->len;
   napi_consume_skb(skb, 0);
  }
  packets++;
 }

 for (i = 0; i < n; i++) {
  struct xdp_frame *xdpf = frames[i];

  err = __virtnet_xdp_xmit_one(vi, sq, xdpf);
  if (err) {
   xdp_return_frame_rx_napi(xdpf);
   drops++;
  }
 }
 ret = n - drops;

 if (flags & XDP_XMIT_FLUSH) {
  if (virtqueue_kick_prepare(sq->vq) && virtqueue_notify(sq->vq))
   kicks = 1;
 }
out:
 u64_stats_update_begin(&sq->stats.syncp);
 sq->stats.bytes += bytes;
 sq->stats.packets += packets;
 sq->stats.xdp_tx += n;
 sq->stats.xdp_tx_drops += drops;
 sq->stats.kicks += kicks;
 u64_stats_update_end(&sq->stats.syncp);

 return ret;
}
