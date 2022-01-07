
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_frame {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_ring {int state; } ;
struct ixgbe_adapter {struct ixgbe_ring** xdp_ring; scalar_t__ xdp_prog; int state; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENXIO ;
 int IXGBE_XDP_TX ;
 int XDP_XMIT_FLAGS_MASK ;
 int XDP_XMIT_FLUSH ;
 int __IXGBE_DOWN ;
 int __IXGBE_TX_DISABLED ;
 int ixgbe_xdp_ring_update_tail (struct ixgbe_ring*) ;
 int ixgbe_xmit_xdp_ring (struct ixgbe_adapter*,struct xdp_frame*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 size_t smp_processor_id () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

__attribute__((used)) static int ixgbe_xdp_xmit(struct net_device *dev, int n,
     struct xdp_frame **frames, u32 flags)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ixgbe_ring *ring;
 int drops = 0;
 int i;

 if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
  return -ENETDOWN;

 if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
  return -EINVAL;




 ring = adapter->xdp_prog ? adapter->xdp_ring[smp_processor_id()] : ((void*)0);
 if (unlikely(!ring))
  return -ENXIO;

 if (unlikely(test_bit(__IXGBE_TX_DISABLED, &ring->state)))
  return -ENXIO;

 for (i = 0; i < n; i++) {
  struct xdp_frame *xdpf = frames[i];
  int err;

  err = ixgbe_xmit_xdp_ring(adapter, xdpf);
  if (err != IXGBE_XDP_TX) {
   xdp_return_frame_rx_napi(xdpf);
   drops++;
  }
 }

 if (unlikely(flags & XDP_XMIT_FLUSH))
  ixgbe_xdp_ring_update_tail(ring);

 return n - drops;
}
