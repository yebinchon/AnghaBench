
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct net_device {int needs_free_netdev; int flags; scalar_t__ needed_headroom; int features; int priv_flags; int type; scalar_t__ addr_len; scalar_t__ hard_header_len; int * netdev_ops; } ;
struct iphdr {int dummy; } ;
struct gtp0_header {int dummy; } ;


 int ARPHRD_NONE ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_NO_QUEUE ;
 int IFF_POINTOPOINT ;
 scalar_t__ LL_MAX_HEADER ;
 int NETIF_F_LLTX ;
 int gtp_netdev_ops ;
 int netif_keep_dst (struct net_device*) ;

__attribute__((used)) static void gtp_link_setup(struct net_device *dev)
{
 dev->netdev_ops = &gtp_netdev_ops;
 dev->needs_free_netdev = 1;

 dev->hard_header_len = 0;
 dev->addr_len = 0;


 dev->type = ARPHRD_NONE;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;

 dev->priv_flags |= IFF_NO_QUEUE;
 dev->features |= NETIF_F_LLTX;
 netif_keep_dst(dev);


 dev->needed_headroom = LL_MAX_HEADER +
      sizeof(struct iphdr) +
      sizeof(struct udphdr) +
      sizeof(struct gtp0_header);
}
