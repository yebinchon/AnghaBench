
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdp_frame {unsigned int len; } ;
struct TYPE_2__ {int producer_lock; } ;
struct veth_rq {TYPE_1__ xdp_ring; int xdp_prog; } ;
struct veth_priv {int dropped; struct veth_rq* rq; int peer; } ;
struct net_device {unsigned int mtu; unsigned int hard_header_len; } ;


 int EINVAL ;
 int ENXIO ;
 unsigned int VLAN_HLEN ;
 int XDP_XMIT_FLAGS_MASK ;
 int XDP_XMIT_FLUSH ;
 scalar_t__ __ptr_ring_produce (TYPE_1__*,void*) ;
 int __veth_xdp_flush (struct veth_rq*) ;
 int atomic64_add (int,int *) ;
 scalar_t__ likely (int) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int rcu_access_pointer (int ) ;
 struct net_device* rcu_dereference (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 size_t veth_select_rxq (struct net_device*) ;
 void* veth_xdp_to_ptr (struct xdp_frame*) ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

__attribute__((used)) static int veth_xdp_xmit(struct net_device *dev, int n,
    struct xdp_frame **frames, u32 flags)
{
 struct veth_priv *rcv_priv, *priv = netdev_priv(dev);
 struct net_device *rcv;
 int i, ret, drops = n;
 unsigned int max_len;
 struct veth_rq *rq;

 if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK)) {
  ret = -EINVAL;
  goto drop;
 }

 rcv = rcu_dereference(priv->peer);
 if (unlikely(!rcv)) {
  ret = -ENXIO;
  goto drop;
 }

 rcv_priv = netdev_priv(rcv);
 rq = &rcv_priv->rq[veth_select_rxq(rcv)];




 if (!rcu_access_pointer(rq->xdp_prog)) {
  ret = -ENXIO;
  goto drop;
 }

 drops = 0;
 max_len = rcv->mtu + rcv->hard_header_len + VLAN_HLEN;

 spin_lock(&rq->xdp_ring.producer_lock);
 for (i = 0; i < n; i++) {
  struct xdp_frame *frame = frames[i];
  void *ptr = veth_xdp_to_ptr(frame);

  if (unlikely(frame->len > max_len ||
        __ptr_ring_produce(&rq->xdp_ring, ptr))) {
   xdp_return_frame_rx_napi(frame);
   drops++;
  }
 }
 spin_unlock(&rq->xdp_ring.producer_lock);

 if (flags & XDP_XMIT_FLUSH)
  __veth_xdp_flush(rq);

 if (likely(!drops))
  return n;

 ret = n - drops;
drop:
 atomic64_add(drops, &priv->dropped);

 return ret;
}
