
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;


 scalar_t__ is_vlan_dev (struct net_device*) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;
 int vlan_dev_vlan_id (struct net_device*) ;

__attribute__((used)) static inline u16 cnic_get_vlan(struct net_device *dev,
    struct net_device **vlan_dev)
{
 if (is_vlan_dev(dev)) {
  *vlan_dev = vlan_dev_real_dev(dev);
  return vlan_dev_vlan_id(dev);
 }
 *vlan_dev = dev;
 return 0;
}
