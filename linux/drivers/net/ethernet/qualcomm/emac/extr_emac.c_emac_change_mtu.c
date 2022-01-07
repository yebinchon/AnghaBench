
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct emac_adapter {int netdev; } ;


 int emac_reinit_locked (struct emac_adapter*) ;
 int hw ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int netif_info (struct emac_adapter*,int ,int ,char*,int,int) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int emac_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 netif_info(adpt, hw, adpt->netdev,
     "changing MTU from %d to %d\n", netdev->mtu,
     new_mtu);
 netdev->mtu = new_mtu;

 if (netif_running(netdev))
  return emac_reinit_locked(adpt);

 return 0;
}
