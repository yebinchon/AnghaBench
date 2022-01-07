
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ (* set_vfta ) (struct e1000_hw*,int ,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_hw {int mbx_lock; TYPE_3__ mac; } ;
struct igbvf_adapter {int active_vlans; TYPE_1__* pdev; struct e1000_hw hw; } ;
typedef int __be16 ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int ) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static int igbvf_vlan_rx_add_vid(struct net_device *netdev,
     __be16 proto, u16 vid)
{
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 spin_lock_bh(&hw->mbx_lock);

 if (hw->mac.ops.set_vfta(hw, vid, 1)) {
  dev_err(&adapter->pdev->dev, "Failed to add vlan id %d\n", vid);
  spin_unlock_bh(&hw->mbx_lock);
  return -EINVAL;
 }

 spin_unlock_bh(&hw->mbx_lock);

 set_bit(vid, adapter->active_vlans);
 return 0;
}
