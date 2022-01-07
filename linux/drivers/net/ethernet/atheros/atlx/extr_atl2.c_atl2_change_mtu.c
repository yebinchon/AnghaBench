
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct atl2_hw {int max_frame_size; } ;
struct atl2_adapter {struct atl2_hw hw; } ;


 int ATL2_WRITE_REG (struct atl2_hw*,int ,scalar_t__) ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 int REG_MTU ;
 scalar_t__ VLAN_HLEN ;
 struct atl2_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl2_change_mtu(struct net_device *netdev, int new_mtu)
{
 struct atl2_adapter *adapter = netdev_priv(netdev);
 struct atl2_hw *hw = &adapter->hw;


 netdev->mtu = new_mtu;
 hw->max_frame_size = new_mtu;
 ATL2_WRITE_REG(hw, REG_MTU, new_mtu + ETH_HLEN +
         VLAN_HLEN + ETH_FCS_LEN);

 return 0;
}
