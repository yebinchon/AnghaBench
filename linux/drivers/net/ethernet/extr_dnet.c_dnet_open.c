
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct dnet {int napi; } ;


 int EAGAIN ;
 int dnet_init_hw (struct dnet*) ;
 int napi_enable (int *) ;
 struct dnet* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int phy_start_aneg (int ) ;

__attribute__((used)) static int dnet_open(struct net_device *dev)
{
 struct dnet *bp = netdev_priv(dev);


 if (!dev->phydev)
  return -EAGAIN;

 napi_enable(&bp->napi);
 dnet_init_hw(bp);

 phy_start_aneg(dev->phydev);


 phy_start(dev->phydev);

 netif_start_queue(dev);

 return 0;
}
