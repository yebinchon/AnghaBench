
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct bonding {int dummy; } ;


 int bond_changelink (struct net_device*,struct nlattr**,struct nlattr**,struct netlink_ext_ack*) ;
 int bond_work_init_all (struct bonding*) ;
 struct bonding* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int register_netdevice (struct net_device*) ;

__attribute__((used)) static int bond_newlink(struct net *src_net, struct net_device *bond_dev,
   struct nlattr *tb[], struct nlattr *data[],
   struct netlink_ext_ack *extack)
{
 int err;

 err = bond_changelink(bond_dev, tb, data, extack);
 if (err < 0)
  return err;

 err = register_netdevice(bond_dev);

 netif_carrier_off(bond_dev);
 if (!err) {
  struct bonding *bond = netdev_priv(bond_dev);

  bond_work_init_all(bond);
 }

 return err;
}
