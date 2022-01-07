
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int EOVERFLOW ;
 int XDP_XMIT_FLUSH ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 int tun_xdp_xmit (struct net_device*,int,struct xdp_frame**,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tun_xdp_tx(struct net_device *dev, struct xdp_buff *xdp)
{
 struct xdp_frame *frame = convert_to_xdp_frame(xdp);

 if (unlikely(!frame))
  return -EOVERFLOW;

 return tun_xdp_xmit(dev, 1, &frame, XDP_XMIT_FLUSH);
}
