
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ type; int flags; int dev_id; int priv_flags; int dev_addr; } ;
struct net {int dummy; } ;
struct ipvl_port {int dev_id_start; int ida; int ipvlans; void* flags; } ;
struct ipvl_dev {int pnode; struct ipvl_port* port; int addrs_lock; int addrs; int sfeatures; struct net_device* dev; struct net_device* phy_dev; } ;
struct TYPE_2__ {int user_ns; } ;


 scalar_t__ ARPHRD_ETHER ;
 int CAP_NET_ADMIN ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IFF_LOOPBACK ;
 int IFF_NO_RX_HANDLER ;
 size_t IFLA_IPVLAN_FLAGS ;
 size_t IFLA_IPVLAN_MODE ;
 size_t IFLA_LINK ;
 size_t IFLA_MTU ;
 int INIT_LIST_HEAD (int *) ;
 int IPVLAN_FEATURES ;
 void* IPVLAN_MODE_L3 ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 TYPE_1__* dev_net (struct net_device*) ;
 int ida_simple_get (int *,int,int,int ) ;
 int ida_simple_remove (int *,int) ;
 int ipvlan_adjust_mtu (struct ipvl_dev*,struct net_device*) ;
 struct ipvl_port* ipvlan_port_get_rtnl (struct net_device*) ;
 int ipvlan_set_port_mode (struct ipvl_port*,void*,struct netlink_ext_ack*) ;
 int list_add_tail_rcu (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 scalar_t__ netdev_is_rx_handler_busy (struct net_device*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;
 int netdev_upper_dev_link (struct net_device*,struct net_device*,struct netlink_ext_ack*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;
 scalar_t__ netif_is_ipvlan (struct net_device*) ;
 int netif_is_ipvlan_port (struct net_device*) ;
 int netif_stacked_transfer_operstate (struct net_device*,struct net_device*) ;
 void* nla_get_u16 (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int ns_capable (int ,int ) ;
 int register_netdevice (struct net_device*) ;
 int spin_lock_init (int *) ;
 int unregister_netdevice (struct net_device*) ;

int ipvlan_link_new(struct net *src_net, struct net_device *dev,
      struct nlattr *tb[], struct nlattr *data[],
      struct netlink_ext_ack *extack)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct ipvl_port *port;
 struct net_device *phy_dev;
 int err;
 u16 mode = IPVLAN_MODE_L3;

 if (!tb[IFLA_LINK])
  return -EINVAL;

 phy_dev = __dev_get_by_index(src_net, nla_get_u32(tb[IFLA_LINK]));
 if (!phy_dev)
  return -ENODEV;

 if (netif_is_ipvlan(phy_dev)) {
  struct ipvl_dev *tmp = netdev_priv(phy_dev);

  phy_dev = tmp->phy_dev;
  if (!ns_capable(dev_net(phy_dev)->user_ns, CAP_NET_ADMIN))
   return -EPERM;
 } else if (!netif_is_ipvlan_port(phy_dev)) {

  if (phy_dev->type != ARPHRD_ETHER ||
      phy_dev->flags & IFF_LOOPBACK) {
   netdev_err(phy_dev,
       "Master is either lo or non-ether device\n");
   return -EINVAL;
  }

  if (netdev_is_rx_handler_busy(phy_dev)) {
   netdev_err(phy_dev, "Device is already in use.\n");
   return -EBUSY;
  }
 }

 ipvlan->phy_dev = phy_dev;
 ipvlan->dev = dev;
 ipvlan->sfeatures = IPVLAN_FEATURES;
 if (!tb[IFLA_MTU])
  ipvlan_adjust_mtu(ipvlan, phy_dev);
 INIT_LIST_HEAD(&ipvlan->addrs);
 spin_lock_init(&ipvlan->addrs_lock);





 memcpy(dev->dev_addr, phy_dev->dev_addr, ETH_ALEN);

 dev->priv_flags |= IFF_NO_RX_HANDLER;

 err = register_netdevice(dev);
 if (err < 0)
  return err;


 port = ipvlan_port_get_rtnl(phy_dev);
 ipvlan->port = port;





 if (port->dev_id_start == 0xFFFE)
  port->dev_id_start = 0x1;






 err = ida_simple_get(&port->ida, port->dev_id_start, 0xFFFE,
        GFP_KERNEL);
 if (err < 0)
  err = ida_simple_get(&port->ida, 0x1, port->dev_id_start,
         GFP_KERNEL);
 if (err < 0)
  goto unregister_netdev;
 dev->dev_id = err;


 port->dev_id_start = err + 1;

 err = netdev_upper_dev_link(phy_dev, dev, extack);
 if (err)
  goto remove_ida;




 if (data && data[IFLA_IPVLAN_FLAGS])
  port->flags = nla_get_u16(data[IFLA_IPVLAN_FLAGS]);

 if (data && data[IFLA_IPVLAN_MODE])
  mode = nla_get_u16(data[IFLA_IPVLAN_MODE]);

 err = ipvlan_set_port_mode(port, mode, extack);
 if (err)
  goto unlink_netdev;

 list_add_tail_rcu(&ipvlan->pnode, &port->ipvlans);
 netif_stacked_transfer_operstate(phy_dev, dev);
 return 0;

unlink_netdev:
 netdev_upper_dev_unlink(phy_dev, dev);
remove_ida:
 ida_simple_remove(&port->ida, dev->dev_id);
unregister_netdev:
 unregister_netdevice(dev);
 return err;
}
