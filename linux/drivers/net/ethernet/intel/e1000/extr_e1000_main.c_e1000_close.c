
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct e1000_adapter {int mng_vlan_id; int * active_vlans; int flags; struct e1000_hw hw; } ;


 int E1000_CHECK_RESET_COUNT ;
 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT ;
 int ETH_P_8021Q ;
 int WARN_ON (scalar_t__) ;
 int __E1000_RESETTING ;
 int e1000_down (struct e1000_adapter*) ;
 int e1000_free_all_rx_resources (struct e1000_adapter*) ;
 int e1000_free_all_tx_resources (struct e1000_adapter*) ;
 int e1000_free_irq (struct e1000_adapter*) ;
 int e1000_power_down_phy (struct e1000_adapter*) ;
 int e1000_vlan_rx_kill_vid (struct net_device*,int ,int ) ;
 int htons (int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

int e1000_close(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int count = E1000_CHECK_RESET_COUNT;

 while (test_bit(__E1000_RESETTING, &adapter->flags) && count--)
  usleep_range(10000, 20000);

 WARN_ON(test_bit(__E1000_RESETTING, &adapter->flags));
 e1000_down(adapter);
 e1000_power_down_phy(adapter);
 e1000_free_irq(adapter);

 e1000_free_all_tx_resources(adapter);
 e1000_free_all_rx_resources(adapter);




 if ((hw->mng_cookie.status &
      E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT) &&
     !test_bit(adapter->mng_vlan_id, adapter->active_vlans)) {
  e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
           adapter->mng_vlan_id);
 }

 return 0;
}
