
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvtap_dev {int tap; } ;
struct list_head {int dummy; } ;


 int macvlan_dellink (struct net_device*,struct list_head*) ;
 struct macvtap_dev* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int tap_del_queues (int *) ;

__attribute__((used)) static void macvtap_dellink(struct net_device *dev,
       struct list_head *head)
{
 struct macvtap_dev *vlantap = netdev_priv(dev);

 netdev_rx_handler_unregister(dev);
 tap_del_queues(&vlantap->tap);
 macvlan_dellink(dev, head);
}
