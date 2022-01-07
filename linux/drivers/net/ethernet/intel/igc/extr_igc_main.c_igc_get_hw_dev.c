
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igc_hw {struct igc_adapter* back; } ;
struct igc_adapter {struct net_device* netdev; } ;



struct net_device *igc_get_hw_dev(struct igc_hw *hw)
{
 struct igc_adapter *adapter = hw->back;

 return adapter->netdev;
}
