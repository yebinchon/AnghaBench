
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {scalar_t__ mode; int lowerdev; int list; int port; } ;
struct list_head {int dummy; } ;


 scalar_t__ MACVLAN_MODE_SOURCE ;
 int list_del_rcu (int *) ;
 int macvlan_flush_sources (int ,struct macvlan_dev*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int netdev_upper_dev_unlink (int ,struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

void macvlan_dellink(struct net_device *dev, struct list_head *head)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 if (vlan->mode == MACVLAN_MODE_SOURCE)
  macvlan_flush_sources(vlan->port, vlan);
 list_del_rcu(&vlan->list);
 unregister_netdevice_queue(dev, head);
 netdev_upper_dev_unlink(vlan->lowerdev, dev);
}
