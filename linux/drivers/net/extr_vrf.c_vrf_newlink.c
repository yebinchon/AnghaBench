
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_vrf {scalar_t__ tb_id; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int IFF_L3MDEV_MASTER ;
 size_t IFLA_VRF_TABLE ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NL_SET_ERR_MSG_ATTR (struct netlink_ext_ack*,struct nlattr*,char*) ;
 scalar_t__ RT_TABLE_UNSPEC ;
 struct net* dev_net (struct net_device*) ;
 int* net_generic (struct net*,int ) ;
 struct net_vrf* netdev_priv (struct net_device*) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int register_netdevice (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;
 int vrf_add_fib_rules (struct net_device*) ;
 int vrf_net_id ;

__attribute__((used)) static int vrf_newlink(struct net *src_net, struct net_device *dev,
         struct nlattr *tb[], struct nlattr *data[],
         struct netlink_ext_ack *extack)
{
 struct net_vrf *vrf = netdev_priv(dev);
 bool *add_fib_rules;
 struct net *net;
 int err;

 if (!data || !data[IFLA_VRF_TABLE]) {
  NL_SET_ERR_MSG(extack, "VRF table id is missing");
  return -EINVAL;
 }

 vrf->tb_id = nla_get_u32(data[IFLA_VRF_TABLE]);
 if (vrf->tb_id == RT_TABLE_UNSPEC) {
  NL_SET_ERR_MSG_ATTR(extack, data[IFLA_VRF_TABLE],
        "Invalid VRF table id");
  return -EINVAL;
 }

 dev->priv_flags |= IFF_L3MDEV_MASTER;

 err = register_netdevice(dev);
 if (err)
  goto out;

 net = dev_net(dev);
 add_fib_rules = net_generic(net, vrf_net_id);
 if (*add_fib_rules) {
  err = vrf_add_fib_rules(dev);
  if (err) {
   unregister_netdevice(dev);
   goto out;
  }
  *add_fib_rules = 0;
 }

out:
 return err;
}
