
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ phydev; } ;
struct dnet {int napi; } ;


 int dnet_reset_hw (struct dnet*) ;
 int napi_disable (int *) ;
 struct dnet* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int dnet_close(struct net_device *dev)
{
 struct dnet *bp = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&bp->napi);

 if (dev->phydev)
  phy_stop(dev->phydev);

 dnet_reset_hw(bp);
 netif_carrier_off(dev);

 return 0;
}
