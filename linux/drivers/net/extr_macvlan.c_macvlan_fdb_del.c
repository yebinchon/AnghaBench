
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;
struct macvlan_dev {int port; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int dev_mc_del (struct net_device*,unsigned char const*) ;
 int dev_uc_del (struct net_device*,unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 scalar_t__ is_unicast_ether_addr (unsigned char const*) ;
 int macvlan_passthru (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
      struct net_device *dev,
      const unsigned char *addr, u16 vid)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 int err = -EINVAL;




 if (!macvlan_passthru(vlan->port) && is_unicast_ether_addr(addr))
  return -EOPNOTSUPP;

 if (is_unicast_ether_addr(addr))
  err = dev_uc_del(dev, addr);
 else if (is_multicast_ether_addr(addr))
  err = dev_mc_del(dev, addr);

 return err;
}
