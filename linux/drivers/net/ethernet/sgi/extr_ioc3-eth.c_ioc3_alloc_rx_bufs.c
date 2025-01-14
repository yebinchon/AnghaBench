
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ioc3_private {int rx_pi; scalar_t__ rx_ci; int * rxr; int * rx_skbs; } ;
struct ioc3_erxbuf {scalar_t__ w0; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PCI64_ATTR_BAR ;
 int RX_BUFFS ;
 int cpu_to_be64 (int ) ;
 scalar_t__ ioc3_alloc_skb (struct ioc3_private*,int *,struct ioc3_erxbuf**,int *) ;
 int ioc3_map (int ,int ) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ioc3_alloc_rx_bufs(struct net_device *dev)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct ioc3_erxbuf *rxb;
 dma_addr_t d;
 int i;





 for (i = 0; i < RX_BUFFS; i++) {
  if (ioc3_alloc_skb(ip, &ip->rx_skbs[i], &rxb, &d))
   return -ENOMEM;

  rxb->w0 = 0;
  ip->rxr[i] = cpu_to_be64(ioc3_map(d, PCI64_ATTR_BAR));
 }
 ip->rx_ci = 0;
 ip->rx_pi = RX_BUFFS;

 return 0;
}
