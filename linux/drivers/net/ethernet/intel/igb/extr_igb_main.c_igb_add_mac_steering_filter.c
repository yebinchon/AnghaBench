
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int EOPNOTSUPP ;
 int IGB_MAC_STATE_QUEUE_STEERING ;
 scalar_t__ e1000_i210 ;
 int igb_add_mac_filter_flags (struct igb_adapter*,int const*,int,int) ;

int igb_add_mac_steering_filter(struct igb_adapter *adapter,
    const u8 *addr, u8 queue, u8 flags)
{
 struct e1000_hw *hw = &adapter->hw;




 if (hw->mac.type != e1000_i210)
  return -EOPNOTSUPP;

 return igb_add_mac_filter_flags(adapter, addr, queue,
     IGB_MAC_STATE_QUEUE_STEERING | flags);
}
