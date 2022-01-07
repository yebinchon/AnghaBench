
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct encx24j600_priv {int rxfilter; int setrx_work; int kworker; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RXFILTER_MULTI ;
 int RXFILTER_NORMAL ;
 int RXFILTER_PROMISC ;
 int kthread_queue_work (int *,int *) ;
 int link ;
 int netdev_mc_empty (struct net_device*) ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;
 int netif_dbg (struct encx24j600_priv*,int ,struct net_device*,char*,...) ;

__attribute__((used)) static void encx24j600_set_multicast_list(struct net_device *dev)
{
 struct encx24j600_priv *priv = netdev_priv(dev);
 int oldfilter = priv->rxfilter;

 if (dev->flags & IFF_PROMISC) {
  netif_dbg(priv, link, dev, "promiscuous mode\n");
  priv->rxfilter = RXFILTER_PROMISC;
 } else if ((dev->flags & IFF_ALLMULTI) || !netdev_mc_empty(dev)) {
  netif_dbg(priv, link, dev, "%smulticast mode\n",
     (dev->flags & IFF_ALLMULTI) ? "all-" : "");
  priv->rxfilter = RXFILTER_MULTI;
 } else {
  netif_dbg(priv, link, dev, "normal mode\n");
  priv->rxfilter = RXFILTER_NORMAL;
 }

 if (oldfilter != priv->rxfilter)
  kthread_queue_work(&priv->kworker, &priv->setrx_work);
}
