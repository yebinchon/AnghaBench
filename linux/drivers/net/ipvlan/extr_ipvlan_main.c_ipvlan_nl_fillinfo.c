
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipvl_port {int flags; int mode; } ;
struct ipvl_dev {int phy_dev; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int IFLA_IPVLAN_FLAGS ;
 int IFLA_IPVLAN_MODE ;
 struct ipvl_port* ipvlan_port_get_rtnl (int ) ;
 struct ipvl_dev* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ipvlan_nl_fillinfo(struct sk_buff *skb,
         const struct net_device *dev)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct ipvl_port *port = ipvlan_port_get_rtnl(ipvlan->phy_dev);
 int ret = -EINVAL;

 if (!port)
  goto err;

 ret = -EMSGSIZE;
 if (nla_put_u16(skb, IFLA_IPVLAN_MODE, port->mode))
  goto err;
 if (nla_put_u16(skb, IFLA_IPVLAN_FLAGS, port->flags))
  goto err;

 return 0;

err:
 return ret;
}
