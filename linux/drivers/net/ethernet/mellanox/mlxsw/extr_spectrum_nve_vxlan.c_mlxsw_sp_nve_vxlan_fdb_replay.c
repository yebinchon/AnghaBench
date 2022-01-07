
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_switchdev_notifier ;
 int netif_is_vxlan (struct net_device const*) ;
 int vxlan_fdb_replay (struct net_device const*,int ,int *,struct netlink_ext_ack*) ;

__attribute__((used)) static int
mlxsw_sp_nve_vxlan_fdb_replay(const struct net_device *nve_dev, __be32 vni,
         struct netlink_ext_ack *extack)
{
 if (WARN_ON(!netif_is_vxlan(nve_dev)))
  return -EINVAL;
 return vxlan_fdb_replay(nve_dev, vni, &mlxsw_sp_switchdev_notifier,
    extack);
}
