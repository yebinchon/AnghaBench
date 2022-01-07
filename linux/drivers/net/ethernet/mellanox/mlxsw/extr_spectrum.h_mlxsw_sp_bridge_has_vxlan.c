
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int mlxsw_sp_bridge_vxlan_dev_find (struct net_device*) ;

__attribute__((used)) static inline bool mlxsw_sp_bridge_has_vxlan(struct net_device *br_dev)
{
 return !!mlxsw_sp_bridge_vxlan_dev_find(br_dev);
}
