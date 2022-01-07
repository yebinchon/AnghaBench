
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int serdes_has_link; scalar_t__ autoneg; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_STATUS_LU ;
 int STATUS ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int er32 (int ) ;
 int msleep (int) ;
 int msleep_interruptible (int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static int e1000_link_test(struct e1000_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;

 *data = 0;
 if (hw->phy.media_type == e1000_media_type_internal_serdes) {
  int i = 0;

  hw->mac.serdes_has_link = 0;




  do {
   hw->mac.ops.check_for_link(hw);
   if (hw->mac.serdes_has_link)
    return *data;
   msleep(20);
  } while (i++ < 3750);

  *data = 1;
 } else {
  hw->mac.ops.check_for_link(hw);
  if (hw->mac.autoneg)



   msleep_interruptible(5000);

  if (!(er32(STATUS) & E1000_STATUS_LU))
   *data = 1;
 }
 return *data;
}
