
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EBUSY ;
 int netdev_update_features (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int sh_eth_change_mtu(struct net_device *ndev, int new_mtu)
{
 if (netif_running(ndev))
  return -EBUSY;

 ndev->mtu = new_mtu;
 netdev_update_features(ndev);

 return 0;
}
