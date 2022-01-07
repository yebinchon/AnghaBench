
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ max_mtu; } ;
struct atl1c_hw {int nic_type; } ;
struct atl1c_adapter {struct atl1c_hw hw; } ;


 scalar_t__ ETH_DATA_LEN ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ MAX_JUMBO_FRAME_SIZE ;
 scalar_t__ VLAN_HLEN ;



 struct atl1c_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1c_set_max_mtu(struct net_device *netdev)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct atl1c_hw *hw = &adapter->hw;

 switch (hw->nic_type) {

 case 130:
 case 129:
 case 128:
  netdev->max_mtu = MAX_JUMBO_FRAME_SIZE -
      (ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN);
  break;

 default:
  netdev->max_mtu = ETH_DATA_LEN;
  break;
 }
}
