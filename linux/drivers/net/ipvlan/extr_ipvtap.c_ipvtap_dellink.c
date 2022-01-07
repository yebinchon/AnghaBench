
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct ipvtap_dev {int tap; } ;


 int ipvlan_link_delete (struct net_device*,struct list_head*) ;
 struct ipvtap_dev* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int tap_del_queues (int *) ;

__attribute__((used)) static void ipvtap_dellink(struct net_device *dev,
      struct list_head *head)
{
 struct ipvtap_dev *vlan = netdev_priv(dev);

 netdev_rx_handler_unregister(dev);
 tap_del_queues(&vlan->tap);
 ipvlan_link_delete(dev, head);
}
