
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int hw; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int ixgb_led_off (int *) ;
 int ixgb_led_on (int *) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ixgb_set_phys_id(struct net_device *netdev, enum ethtool_phys_id_state state)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 switch (state) {
 case 131:
  return 2;

 case 128:
  ixgb_led_on(&adapter->hw);
  break;

 case 129:
 case 130:
  ixgb_led_off(&adapter->hw);
 }

 return 0;
}
