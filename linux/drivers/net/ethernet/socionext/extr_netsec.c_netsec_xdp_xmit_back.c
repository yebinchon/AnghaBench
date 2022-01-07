
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct netsec_priv {struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {int lock; } ;


 size_t NETSEC_RING_TX ;
 int NETSEC_XDP_CONSUMED ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int netsec_xdp_queue_one (struct netsec_priv*,struct xdp_frame*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 netsec_xdp_xmit_back(struct netsec_priv *priv, struct xdp_buff *xdp)
{
 struct netsec_desc_ring *tx_ring = &priv->desc_ring[NETSEC_RING_TX];
 struct xdp_frame *xdpf = convert_to_xdp_frame(xdp);
 u32 ret;

 if (unlikely(!xdpf))
  return NETSEC_XDP_CONSUMED;

 spin_lock(&tx_ring->lock);
 ret = netsec_xdp_queue_one(priv, xdpf, 0);
 spin_unlock(&tx_ring->lock);

 return ret;
}
