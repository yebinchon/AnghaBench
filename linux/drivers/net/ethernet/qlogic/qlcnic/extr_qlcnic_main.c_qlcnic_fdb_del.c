
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qlcnic_adapter {int flags; int fdb_mac_learn; } ;
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int QLCNIC_ESWITCH_ENABLED ;
 int dev_mc_del (struct net_device*,unsigned char const*) ;
 int dev_uc_del (struct net_device*,unsigned char const*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 scalar_t__ is_unicast_ether_addr (unsigned char const*) ;
 int ndo_dflt_fdb_del (struct ndmsg*,struct nlattr**,struct net_device*,unsigned char const*,int ) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_nic_del_mac (struct qlcnic_adapter*,unsigned char const*) ;
 scalar_t__ qlcnic_sriov_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
   struct net_device *netdev,
   const unsigned char *addr, u16 vid)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int err = -EOPNOTSUPP;

 if (!adapter->fdb_mac_learn)
  return ndo_dflt_fdb_del(ndm, tb, netdev, addr, vid);

 if ((adapter->flags & QLCNIC_ESWITCH_ENABLED) ||
     qlcnic_sriov_check(adapter)) {
  if (is_unicast_ether_addr(addr)) {
   err = dev_uc_del(netdev, addr);
   if (!err)
    err = qlcnic_nic_del_mac(adapter, addr);
  } else if (is_multicast_ether_addr(addr)) {
   err = dev_mc_del(netdev, addr);
  } else {
   err = -EINVAL;
  }
 }
 return err;
}
