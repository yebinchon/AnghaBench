
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int word_size; } ;
struct e1000_hw {TYPE_1__ eeprom; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_get_eeprom_len(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 return hw->eeprom.word_size * 2;
}
