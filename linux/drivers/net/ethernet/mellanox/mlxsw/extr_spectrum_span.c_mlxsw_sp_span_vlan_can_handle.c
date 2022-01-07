
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ is_vlan_dev (struct net_device const*) ;
 scalar_t__ mlxsw_sp_port_dev_check (int ) ;
 int vlan_dev_real_dev (struct net_device const*) ;

__attribute__((used)) static bool
mlxsw_sp_span_vlan_can_handle(const struct net_device *dev)
{
 return is_vlan_dev(dev) &&
        mlxsw_sp_port_dev_check(vlan_dev_real_dev(dev));
}
