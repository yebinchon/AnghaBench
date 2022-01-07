
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int priv_destructor; int type; scalar_t__ addr_len; int mtu; int hard_header_len; int features; int * netdev_ops; } ;


 int ARPHRD_PPP ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int NETIF_F_LLTX ;
 int PPP_HDRLEN ;
 int PPP_MRU ;
 int SET_NETDEV_DEVTYPE (struct net_device*,int *) ;
 int netif_keep_dst (struct net_device*) ;
 int ppp_dev_priv_destructor ;
 int ppp_netdev_ops ;
 int ppp_type ;

__attribute__((used)) static void ppp_setup(struct net_device *dev)
{
 dev->netdev_ops = &ppp_netdev_ops;
 SET_NETDEV_DEVTYPE(dev, &ppp_type);

 dev->features |= NETIF_F_LLTX;

 dev->hard_header_len = PPP_HDRLEN;
 dev->mtu = PPP_MRU;
 dev->addr_len = 0;
 dev->tx_queue_len = 3;
 dev->type = ARPHRD_PPP;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
 dev->priv_destructor = ppp_dev_priv_destructor;
 netif_keep_dst(dev);
}
