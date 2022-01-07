
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; scalar_t__ phydev; } ;
struct ethoc {int napi; } ;


 int ethoc_disable_rx_and_tx (struct ethoc*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int ethoc_stop(struct net_device *dev)
{
 struct ethoc *priv = netdev_priv(dev);

 napi_disable(&priv->napi);

 if (dev->phydev)
  phy_stop(dev->phydev);

 ethoc_disable_rx_and_tx(priv);
 free_irq(dev->irq, dev);

 if (!netif_queue_stopped(dev))
  netif_stop_queue(dev);

 return 0;
}
