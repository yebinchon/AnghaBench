
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_vfs; TYPE_1__* vfinfo; } ;
struct TYPE_2__ {int trusted; int clear_to_send; } ;


 int EINVAL ;
 int drv ;
 int e_info (int ,char*,int,char*) ;
 int ixgbe_ping_vf (struct ixgbe_adapter*,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

int ixgbe_ndo_set_vf_trust(struct net_device *netdev, int vf, bool setting)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (vf >= adapter->num_vfs)
  return -EINVAL;


 if (adapter->vfinfo[vf].trusted == setting)
  return 0;

 adapter->vfinfo[vf].trusted = setting;


 adapter->vfinfo[vf].clear_to_send = 0;
 ixgbe_ping_vf(adapter, vf);

 e_info(drv, "VF %u is %strusted\n", vf, setting ? "" : "not ");

 return 0;
}
