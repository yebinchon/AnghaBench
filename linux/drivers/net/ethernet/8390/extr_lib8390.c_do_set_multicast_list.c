
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned long base_addr; int flags; } ;
struct ei_device {int* mcfilter; } ;


 scalar_t__ E8390_CMD ;
 int E8390_NODMA ;
 int E8390_PAGE0 ;
 int E8390_PAGE1 ;
 int E8390_RXCONFIG ;
 scalar_t__ EN0_RXCR ;
 scalar_t__ EN1_MULT_SHIFT (int) ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 scalar_t__ ei_inb_p (scalar_t__) ;
 int ei_outb_p (int,scalar_t__) ;
 int make_mc_bits (int*,struct net_device*) ;
 int memset (int*,int,int) ;
 int netdev_err (struct net_device*,char*,int) ;
 int netdev_mc_empty (struct net_device*) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void do_set_multicast_list(struct net_device *dev)
{
 unsigned long e8390_base = dev->base_addr;
 int i;
 struct ei_device *ei_local = netdev_priv(dev);

 if (!(dev->flags&(IFF_PROMISC|IFF_ALLMULTI))) {
  memset(ei_local->mcfilter, 0, 8);
  if (!netdev_mc_empty(dev))
   make_mc_bits(ei_local->mcfilter, dev);
 } else
  memset(ei_local->mcfilter, 0xFF, 8);
 if (netif_running(dev))
  ei_outb_p(E8390_RXCONFIG, e8390_base + EN0_RXCR);
 ei_outb_p(E8390_NODMA + E8390_PAGE1, e8390_base + E8390_CMD);
 for (i = 0; i < 8; i++) {
  ei_outb_p(ei_local->mcfilter[i], e8390_base + EN1_MULT_SHIFT(i));

  if (ei_inb_p(e8390_base + EN1_MULT_SHIFT(i)) != ei_local->mcfilter[i])
   netdev_err(dev, "Multicast filter read/write mismap %d\n",
       i);

 }
 ei_outb_p(E8390_NODMA + E8390_PAGE0, e8390_base + E8390_CMD);

 if (dev->flags&IFF_PROMISC)
  ei_outb_p(E8390_RXCONFIG | 0x18, e8390_base + EN0_RXCR);
 else if (dev->flags & IFF_ALLMULTI || !netdev_mc_empty(dev))
  ei_outb_p(E8390_RXCONFIG | 0x08, e8390_base + EN0_RXCR);
 else
  ei_outb_p(E8390_RXCONFIG, e8390_base + EN0_RXCR);
}
