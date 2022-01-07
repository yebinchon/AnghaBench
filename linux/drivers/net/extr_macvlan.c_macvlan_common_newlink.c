
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ mtu; int priv_flags; int max_mtu; int min_mtu; } ;
struct net {int dummy; } ;
struct macvlan_port {int dev; int vlans; scalar_t__ count; } ;
struct macvlan_dev {scalar_t__ mode; int list; int flags; int set_features; struct macvlan_port* port; struct net_device* dev; struct net_device* lowerdev; } ;


 int EINVAL ;
 int ENODEV ;
 int ETH_MIN_MTU ;
 int IFF_MACVLAN ;
 size_t IFLA_ADDRESS ;
 size_t IFLA_LINK ;
 size_t IFLA_MACVLAN_FLAGS ;
 size_t IFLA_MACVLAN_MACADDR_MODE ;
 size_t IFLA_MACVLAN_MODE ;
 size_t IFLA_MTU ;
 int MACVLAN_FEATURES ;
 scalar_t__ MACVLAN_MODE_PASSTHRU ;
 scalar_t__ MACVLAN_MODE_SOURCE ;
 scalar_t__ MACVLAN_MODE_VEPA ;
 struct net_device* __dev_get_by_index (struct net*,void*) ;
 int eth_hw_addr_inherit (struct net_device*,struct net_device*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int linkwatch_fire_event (struct net_device*) ;
 int list_add_tail_rcu (int *,int *) ;
 int macvlan_changelink_sources (struct macvlan_dev*,int,struct nlattr**) ;
 struct net_device* macvlan_dev_real_dev (struct net_device*) ;
 scalar_t__ macvlan_passthru (struct macvlan_port*) ;
 int macvlan_port_create (struct net_device*) ;
 int macvlan_port_destroy (int ) ;
 struct macvlan_port* macvlan_port_get_rtnl (struct net_device*) ;
 int macvlan_set_passthru (struct macvlan_port*) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int netdev_upper_dev_link (struct net_device*,struct net_device*,struct netlink_ext_ack*) ;
 scalar_t__ netif_is_macvlan (struct net_device*) ;
 int netif_is_macvlan_port (struct net_device*) ;
 int netif_stacked_transfer_operstate (struct net_device*,struct net_device*) ;
 int nla_get_u16 (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int register_netdevice (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

int macvlan_common_newlink(struct net *src_net, struct net_device *dev,
      struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct macvlan_port *port;
 struct net_device *lowerdev;
 int err;
 int macmode;
 bool create = 0;

 if (!tb[IFLA_LINK])
  return -EINVAL;

 lowerdev = __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
 if (lowerdev == ((void*)0))
  return -ENODEV;




 if (netif_is_macvlan(lowerdev))
  lowerdev = macvlan_dev_real_dev(lowerdev);

 if (!tb[IFLA_MTU])
  dev->mtu = lowerdev->mtu;
 else if (dev->mtu > lowerdev->mtu)
  return -EINVAL;


 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = lowerdev->max_mtu;

 if (!tb[IFLA_ADDRESS])
  eth_hw_addr_random(dev);

 if (!netif_is_macvlan_port(lowerdev)) {
  err = macvlan_port_create(lowerdev);
  if (err < 0)
   return err;
  create = 1;
 }
 port = macvlan_port_get_rtnl(lowerdev);


 if (macvlan_passthru(port)) {



  err = -EINVAL;
  goto destroy_macvlan_port;
 }

 vlan->lowerdev = lowerdev;
 vlan->dev = dev;
 vlan->port = port;
 vlan->set_features = MACVLAN_FEATURES;

 vlan->mode = MACVLAN_MODE_VEPA;
 if (data && data[IFLA_MACVLAN_MODE])
  vlan->mode = nla_get_u32(data[IFLA_MACVLAN_MODE]);

 if (data && data[IFLA_MACVLAN_FLAGS])
  vlan->flags = nla_get_u16(data[IFLA_MACVLAN_FLAGS]);

 if (vlan->mode == MACVLAN_MODE_PASSTHRU) {
  if (port->count) {
   err = -EINVAL;
   goto destroy_macvlan_port;
  }
  macvlan_set_passthru(port);
  eth_hw_addr_inherit(dev, lowerdev);
 }

 if (data && data[IFLA_MACVLAN_MACADDR_MODE]) {
  if (vlan->mode != MACVLAN_MODE_SOURCE) {
   err = -EINVAL;
   goto destroy_macvlan_port;
  }
  macmode = nla_get_u32(data[IFLA_MACVLAN_MACADDR_MODE]);
  err = macvlan_changelink_sources(vlan, macmode, data);
  if (err)
   goto destroy_macvlan_port;
 }

 err = register_netdevice(dev);
 if (err < 0)
  goto destroy_macvlan_port;

 dev->priv_flags |= IFF_MACVLAN;
 err = netdev_upper_dev_link(lowerdev, dev, extack);
 if (err)
  goto unregister_netdev;

 list_add_tail_rcu(&vlan->list, &port->vlans);
 netif_stacked_transfer_operstate(lowerdev, dev);
 linkwatch_fire_event(dev);

 return 0;

unregister_netdev:

 unregister_netdevice(dev);
 return err;
destroy_macvlan_port:



 if (create && macvlan_port_get_rtnl(lowerdev))
  macvlan_port_destroy(port->dev);
 return err;
}
