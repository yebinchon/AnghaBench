
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int max_epid; int my_epid; TYPE_1__* ep_shm_info; } ;
struct fjes_adapter {TYPE_2__ hw; } ;
typedef int __be16 ;
struct TYPE_3__ {int tx; } ;


 int ENOSPC ;
 int fjes_hw_check_vlan_id (int *,int ) ;
 int fjes_hw_set_vlan_id (int *,int ) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fjes_vlan_rx_add_vid(struct net_device *netdev,
    __be16 proto, u16 vid)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 bool ret = 1;
 int epid;

 for (epid = 0; epid < adapter->hw.max_epid; epid++) {
  if (epid == adapter->hw.my_epid)
   continue;

  if (!fjes_hw_check_vlan_id(
   &adapter->hw.ep_shm_info[epid].tx, vid))
   ret = fjes_hw_set_vlan_id(
    &adapter->hw.ep_shm_info[epid].tx, vid);
 }

 return ret ? 0 : -ENOSPC;
}
