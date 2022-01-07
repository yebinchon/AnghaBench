
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int EOPNOTSUPP ;
 int netdev_warn_once (struct net_device*,char*) ;

__attribute__((used)) static int mlx5e_uplink_rep_set_vf_vlan(struct net_device *dev, int vf, u16 vlan, u8 qos,
     __be16 vlan_proto)
{
 netdev_warn_once(dev, "legacy vf vlan setting isn't supported in switchdev mode\n");

 if (vlan != 0)
  return -EOPNOTSUPP;


 return 0;
}
