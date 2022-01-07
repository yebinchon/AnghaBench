
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int netif_running (struct net_device*) ;
 int xgmac_open (struct net_device*) ;
 int xgmac_stop (struct net_device*) ;

__attribute__((used)) static int xgmac_change_mtu(struct net_device *dev, int new_mtu)
{

 if (!netif_running(dev))
  return 0;


 xgmac_stop(dev);
 dev->mtu = new_mtu;
 return xgmac_open(dev);
}
