
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int e1000_cleanup_led (struct e1000_hw*) ;
 int e1000_led_off (struct e1000_hw*) ;
 int e1000_led_on (struct e1000_hw*) ;
 int e1000_setup_led (struct e1000_hw*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_set_phys_id(struct net_device *netdev,
        enum ethtool_phys_id_state state)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 switch (state) {
 case 131:
  e1000_setup_led(hw);
  return 2;

 case 128:
  e1000_led_on(hw);
  break;

 case 129:
  e1000_led_off(hw);
  break;

 case 130:
  e1000_cleanup_led(hw);
 }

 return 0;
}
