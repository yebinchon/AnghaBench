
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int media_type; scalar_t__ id; } ;
struct TYPE_4__ {int (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {scalar_t__ type; int get_link_status; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
struct igb_adapter {int flags; int link_check_timeout; int netdev; struct e1000_hw hw; } ;


 scalar_t__ I210_I_PHY_ID ;
 int IGB_FLAG_NEED_LINK_UPDATE ;
 scalar_t__ e1000_i210 ;
 scalar_t__ e1000_i211 ;



 int jiffies ;
 int netif_carrier_ok (int ) ;
 int stub1 (struct e1000_hw*) ;

bool igb_has_link(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 bool link_active = 0;






 switch (hw->phy.media_type) {
 case 130:
  if (!hw->mac.get_link_status)
   return 1;

 case 129:
  hw->mac.ops.check_for_link(hw);
  link_active = !hw->mac.get_link_status;
  break;
 default:
 case 128:
  break;
 }

 if (((hw->mac.type == e1000_i210) ||
      (hw->mac.type == e1000_i211)) &&
      (hw->phy.id == I210_I_PHY_ID)) {
  if (!netif_carrier_ok(adapter->netdev)) {
   adapter->flags &= ~IGB_FLAG_NEED_LINK_UPDATE;
  } else if (!(adapter->flags & IGB_FLAG_NEED_LINK_UPDATE)) {
   adapter->flags |= IGB_FLAG_NEED_LINK_UPDATE;
   adapter->link_check_timeout = jiffies;
  }
 }

 return link_active;
}
