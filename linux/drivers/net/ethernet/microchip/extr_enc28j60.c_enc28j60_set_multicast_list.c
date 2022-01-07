
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct enc28j60_net {int rxfilter; int setrx_work; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RXFILTER_MULTI ;
 int RXFILTER_NORMAL ;
 int RXFILTER_PROMISC ;
 int netdev_info (struct net_device*,char*,...) ;
 int netdev_mc_empty (struct net_device*) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct enc28j60_net*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void enc28j60_set_multicast_list(struct net_device *dev)
{
 struct enc28j60_net *priv = netdev_priv(dev);
 int oldfilter = priv->rxfilter;

 if (dev->flags & IFF_PROMISC) {
  if (netif_msg_link(priv))
   netdev_info(dev, "promiscuous mode\n");
  priv->rxfilter = RXFILTER_PROMISC;
 } else if ((dev->flags & IFF_ALLMULTI) || !netdev_mc_empty(dev)) {
  if (netif_msg_link(priv))
   netdev_info(dev, "%smulticast mode\n",
        (dev->flags & IFF_ALLMULTI) ? "all-" : "");
  priv->rxfilter = RXFILTER_MULTI;
 } else {
  if (netif_msg_link(priv))
   netdev_info(dev, "normal mode\n");
  priv->rxfilter = RXFILTER_NORMAL;
 }

 if (oldfilter != priv->rxfilter)
  schedule_work(&priv->setrx_work);
}
