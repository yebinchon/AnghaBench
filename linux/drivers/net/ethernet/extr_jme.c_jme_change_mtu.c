
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct jme_adapter {int dummy; } ;


 int jme_reset_link (struct jme_adapter*) ;
 int jme_restart_rx_engine (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;

__attribute__((used)) static int
jme_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 netdev->mtu = new_mtu;
 netdev_update_features(netdev);

 jme_restart_rx_engine(jme);
 jme_reset_link(jme);

 return 0;
}
