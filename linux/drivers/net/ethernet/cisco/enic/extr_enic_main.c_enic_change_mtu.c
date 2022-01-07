
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mtu; } ;
struct enic {scalar_t__ port_mtu; } ;


 int EOPNOTSUPP ;
 int _enic_change_mtu (struct net_device*,int) ;
 scalar_t__ enic_is_dynamic (struct enic*) ;
 scalar_t__ enic_is_sriov_vf (struct enic*) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int enic_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct enic *enic = netdev_priv(netdev);

 if (enic_is_dynamic(enic) || enic_is_sriov_vf(enic))
  return -EOPNOTSUPP;

 if (netdev->mtu > enic->port_mtu)
  netdev_warn(netdev,
       "interface MTU (%d) set higher than port MTU (%d)\n",
       netdev->mtu, enic->port_mtu);

 return _enic_change_mtu(netdev, new_mtu);
}
