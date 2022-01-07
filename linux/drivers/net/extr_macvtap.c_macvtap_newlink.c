
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int dev; int update_features; int count_rx_dropped; int count_tx_dropped; int tap_features; int queue_list; } ;
struct macvtap_dev {TYPE_1__ vlan; TYPE_2__ tap; } ;


 int INIT_LIST_HEAD (int *) ;
 int TUN_OFFLOADS ;
 int macvlan_common_newlink (struct net*,struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 int macvtap_count_rx_dropped ;
 int macvtap_count_tx_dropped ;
 int macvtap_update_features ;
 struct macvtap_dev* netdev_priv (struct net_device*) ;
 int netdev_rx_handler_register (struct net_device*,int ,TYPE_2__*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;
 int tap_handle_frame ;

__attribute__((used)) static int macvtap_newlink(struct net *src_net, struct net_device *dev,
      struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 struct macvtap_dev *vlantap = netdev_priv(dev);
 int err;

 INIT_LIST_HEAD(&vlantap->tap.queue_list);




 vlantap->tap.tap_features = TUN_OFFLOADS;




 vlantap->tap.count_tx_dropped = macvtap_count_tx_dropped;
 vlantap->tap.count_rx_dropped = macvtap_count_rx_dropped;
 vlantap->tap.update_features = macvtap_update_features;

 err = netdev_rx_handler_register(dev, tap_handle_frame, &vlantap->tap);
 if (err)
  return err;




 err = macvlan_common_newlink(src_net, dev, tb, data, extack);
 if (err) {
  netdev_rx_handler_unregister(dev);
  return err;
 }

 vlantap->tap.dev = vlantap->vlan.dev;

 return 0;
}
