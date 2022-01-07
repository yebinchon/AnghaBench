
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct macvlan_dev {struct net_device* lowerdev; TYPE_1__* port; int mc_filter; } ;
struct TYPE_2__ {int mc_filter; } ;


 int dev_mc_sync (struct net_device*,struct net_device*) ;
 int dev_uc_sync (struct net_device*,struct net_device*) ;
 int macvlan_compute_filter (int ,struct net_device*,struct macvlan_dev*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvlan_set_mac_lists(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 macvlan_compute_filter(vlan->mc_filter, dev, vlan);

 dev_uc_sync(vlan->lowerdev, dev);
 dev_mc_sync(vlan->lowerdev, dev);
 macvlan_compute_filter(vlan->port->mc_filter, vlan->lowerdev, ((void*)0));
}
