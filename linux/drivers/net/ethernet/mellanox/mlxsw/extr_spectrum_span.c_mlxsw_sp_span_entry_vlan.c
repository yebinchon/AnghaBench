
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 struct net_device* vlan_dev_real_dev (struct net_device const*) ;
 int vlan_dev_vlan_id (struct net_device const*) ;

__attribute__((used)) static struct net_device *
mlxsw_sp_span_entry_vlan(const struct net_device *vlan_dev,
    u16 *p_vid)
{
 *p_vid = vlan_dev_vlan_id(vlan_dev);
 return vlan_dev_real_dev(vlan_dev);
}
