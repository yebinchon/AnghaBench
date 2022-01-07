
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int flags; int active_vlans; struct e1000_hw hw; } ;
typedef int __be16 ;


 int IGB_FLAG_VLAN_PROMISC ;
 int igb_vfta_set (struct e1000_hw*,int ,int,int,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int igb_vlan_rx_add_vid(struct net_device *netdev,
          __be16 proto, u16 vid)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int pf_id = adapter->vfs_allocated_count;


 if (!vid || !(adapter->flags & IGB_FLAG_VLAN_PROMISC))
  igb_vfta_set(hw, vid, pf_id, 1, !!vid);

 set_bit(vid, adapter->active_vlans);

 return 0;
}
