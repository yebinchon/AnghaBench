
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct net_device {int dummy; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef int __be32 ;


 int mlxsw_sp_fdb_vxlan_call_notifiers (struct net_device*,char const*,int,union mlxsw_sp_l3addr*,int ,int) ;
 scalar_t__ netif_is_vxlan (struct net_device*) ;

__attribute__((used)) static void mlxsw_sp_fdb_nve_call_notifiers(struct net_device *dev,
         const char *mac,
         enum mlxsw_sp_l3proto proto,
         union mlxsw_sp_l3addr *addr,
         __be32 vni,
         bool adding)
{
 if (netif_is_vxlan(dev))
  mlxsw_sp_fdb_vxlan_call_notifiers(dev, mac, proto, addr, vni,
        adding);
}
