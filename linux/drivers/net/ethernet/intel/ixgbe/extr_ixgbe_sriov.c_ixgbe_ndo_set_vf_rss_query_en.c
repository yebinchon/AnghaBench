
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int num_vfs; TYPE_3__* vfinfo; TYPE_2__ hw; } ;
struct TYPE_6__ {int rss_query_enabled; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ ixgbe_mac_82599EB ;
 scalar_t__ ixgbe_mac_X550 ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
      bool setting)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);




 if (adapter->hw.mac.type < ixgbe_mac_82599EB ||
     adapter->hw.mac.type >= ixgbe_mac_X550)
  return -EOPNOTSUPP;

 if (vf >= adapter->num_vfs)
  return -EINVAL;

 adapter->vfinfo[vf].rss_query_enabled = setting;

 return 0;
}
