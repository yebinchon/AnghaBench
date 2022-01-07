
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int led_status; struct e1000_hw hw; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int IGB_LED_ON ;
 int clear_bit (int ,int *) ;
 int igb_blink_led (struct e1000_hw*) ;
 int igb_cleanup_led (struct e1000_hw*) ;
 int igb_led_off (struct e1000_hw*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_set_phys_id(struct net_device *netdev,
      enum ethtool_phys_id_state state)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 switch (state) {
 case 131:
  igb_blink_led(hw);
  return 2;
 case 128:
  igb_blink_led(hw);
  break;
 case 129:
  igb_led_off(hw);
  break;
 case 130:
  igb_led_off(hw);
  clear_bit(IGB_LED_ON, &adapter->led_status);
  igb_cleanup_led(hw);
  break;
 }

 return 0;
}
