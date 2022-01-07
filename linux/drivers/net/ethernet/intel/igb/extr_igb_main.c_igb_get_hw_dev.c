
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {struct net_device* netdev; } ;
struct e1000_hw {struct igb_adapter* back; } ;



struct net_device *igb_get_hw_dev(struct e1000_hw *hw)
{
 struct igb_adapter *adapter = hw->back;
 return adapter->netdev;
}
