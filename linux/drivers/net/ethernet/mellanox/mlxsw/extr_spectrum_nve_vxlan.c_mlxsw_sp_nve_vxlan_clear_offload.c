
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int __be32 ;


 scalar_t__ WARN_ON (int) ;
 int netif_is_vxlan (struct net_device const*) ;
 int vxlan_fdb_clear_offload (struct net_device const*,int ) ;

__attribute__((used)) static void
mlxsw_sp_nve_vxlan_clear_offload(const struct net_device *nve_dev, __be32 vni)
{
 if (WARN_ON(!netif_is_vxlan(nve_dev)))
  return;
 vxlan_fdb_clear_offload(nve_dev, vni);
}
