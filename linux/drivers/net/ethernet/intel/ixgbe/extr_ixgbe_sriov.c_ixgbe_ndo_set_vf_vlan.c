
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_1__* vfinfo; } ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {scalar_t__ pf_vlan; } ;


 int EINVAL ;
 int EPROTONOSUPPORT ;
 int ETH_P_8021Q ;
 scalar_t__ htons (int ) ;
 int ixgbe_disable_port_vlan (struct ixgbe_adapter*,int) ;
 int ixgbe_enable_port_vlan (struct ixgbe_adapter*,int,int,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

int ixgbe_ndo_set_vf_vlan(struct net_device *netdev, int vf, u16 vlan,
     u8 qos, __be16 vlan_proto)
{
 int err = 0;
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if ((vf >= adapter->num_vfs) || (vlan > 4095) || (qos > 7))
  return -EINVAL;
 if (vlan_proto != htons(ETH_P_8021Q))
  return -EPROTONOSUPPORT;
 if (vlan || qos) {







  if (adapter->vfinfo[vf].pf_vlan)
   err = ixgbe_disable_port_vlan(adapter, vf);
  if (err)
   goto out;
  err = ixgbe_enable_port_vlan(adapter, vf, vlan, qos);
 } else {
  err = ixgbe_disable_port_vlan(adapter, vf);
 }

out:
 return err;
}
