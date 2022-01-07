
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int media_type; scalar_t__ id; } ;
struct TYPE_4__ {int (* check_for_link ) (struct igc_hw*) ;} ;
struct TYPE_5__ {scalar_t__ type; int get_link_status; TYPE_1__ ops; } ;
struct igc_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
struct igc_adapter {int flags; int link_check_timeout; int netdev; struct igc_hw hw; } ;


 scalar_t__ I225_I_PHY_ID ;
 int IGC_FLAG_NEED_LINK_UPDATE ;
 scalar_t__ igc_i225 ;


 int jiffies ;
 int netif_carrier_ok (int ) ;
 int stub1 (struct igc_hw*) ;

bool igc_has_link(struct igc_adapter *adapter)
{
 struct igc_hw *hw = &adapter->hw;
 bool link_active = 0;






 switch (hw->phy.media_type) {
 case 129:
  if (!hw->mac.get_link_status)
   return 1;
  hw->mac.ops.check_for_link(hw);
  link_active = !hw->mac.get_link_status;
  break;
 default:
 case 128:
  break;
 }

 if (hw->mac.type == igc_i225 &&
     hw->phy.id == I225_I_PHY_ID) {
  if (!netif_carrier_ok(adapter->netdev)) {
   adapter->flags &= ~IGC_FLAG_NEED_LINK_UPDATE;
  } else if (!(adapter->flags & IGC_FLAG_NEED_LINK_UPDATE)) {
   adapter->flags |= IGC_FLAG_NEED_LINK_UPDATE;
   adapter->link_check_timeout = jiffies;
  }
 }

 return link_active;
}
