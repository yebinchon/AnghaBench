
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_port {int dummy; } ;
struct ipvl_dev {int phy_dev; } ;
struct TYPE_2__ {int user_ns; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 size_t IFLA_IPVLAN_FLAGS ;
 size_t IFLA_IPVLAN_MODE ;
 int IPVLAN_F_PRIVATE ;
 int IPVLAN_F_VEPA ;
 TYPE_1__* dev_net (int ) ;
 int ipvlan_clear_private (struct ipvl_port*) ;
 int ipvlan_clear_vepa (struct ipvl_port*) ;
 int ipvlan_mark_private (struct ipvl_port*) ;
 int ipvlan_mark_vepa (struct ipvl_port*) ;
 struct ipvl_port* ipvlan_port_get_rtnl (int ) ;
 int ipvlan_set_port_mode (struct ipvl_port*,int,struct netlink_ext_ack*) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;
 int nla_get_u16 (struct nlattr*) ;
 int ns_capable (int ,int ) ;

__attribute__((used)) static int ipvlan_nl_changelink(struct net_device *dev,
    struct nlattr *tb[], struct nlattr *data[],
    struct netlink_ext_ack *extack)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct ipvl_port *port = ipvlan_port_get_rtnl(ipvlan->phy_dev);
 int err = 0;

 if (!data)
  return 0;
 if (!ns_capable(dev_net(ipvlan->phy_dev)->user_ns, CAP_NET_ADMIN))
  return -EPERM;

 if (data[IFLA_IPVLAN_MODE]) {
  u16 nmode = nla_get_u16(data[IFLA_IPVLAN_MODE]);

  err = ipvlan_set_port_mode(port, nmode, extack);
 }

 if (!err && data[IFLA_IPVLAN_FLAGS]) {
  u16 flags = nla_get_u16(data[IFLA_IPVLAN_FLAGS]);

  if (flags & IPVLAN_F_PRIVATE)
   ipvlan_mark_private(port);
  else
   ipvlan_clear_private(port);

  if (flags & IPVLAN_F_VEPA)
   ipvlan_mark_vepa(port);
  else
   ipvlan_clear_vepa(port);
 }

 return err;
}
