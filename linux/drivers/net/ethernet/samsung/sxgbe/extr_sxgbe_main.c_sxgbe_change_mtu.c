
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int netif_running (struct net_device*) ;
 int sxgbe_open (struct net_device*) ;
 int sxgbe_release (struct net_device*) ;

__attribute__((used)) static int sxgbe_change_mtu(struct net_device *dev, int new_mtu)
{
 dev->mtu = new_mtu;

 if (!netif_running(dev))
  return 0;





 sxgbe_release(dev);
 return sxgbe_open(dev);
}
