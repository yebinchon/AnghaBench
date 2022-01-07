
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_6__ {int speeds_supported; TYPE_2__ ops; } ;
struct TYPE_4__ {int type; } ;
struct ixgbe_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_LINK_SPEED_100_FULL ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_LINK_SPEED_5GB_FULL ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_SPEED_100 ;
 int MDIO_PMA_SPEED_1000 ;
 int MDIO_SPEED ;
 int MDIO_SPEED_10G ;



 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static s32 ixgbe_get_copper_speeds_supported(struct ixgbe_hw *hw)
{
 u16 speed_ability;
 s32 status;

 status = hw->phy.ops.read_reg(hw, MDIO_SPEED, MDIO_MMD_PMAPMD,
          &speed_ability);
 if (status)
  return status;

 if (speed_ability & MDIO_SPEED_10G)
  hw->phy.speeds_supported |= IXGBE_LINK_SPEED_10GB_FULL;
 if (speed_ability & MDIO_PMA_SPEED_1000)
  hw->phy.speeds_supported |= IXGBE_LINK_SPEED_1GB_FULL;
 if (speed_ability & MDIO_PMA_SPEED_100)
  hw->phy.speeds_supported |= IXGBE_LINK_SPEED_100_FULL;

 switch (hw->mac.type) {
 case 130:
  hw->phy.speeds_supported |= IXGBE_LINK_SPEED_2_5GB_FULL;
  hw->phy.speeds_supported |= IXGBE_LINK_SPEED_5GB_FULL;
  break;
 case 129:
 case 128:
  hw->phy.speeds_supported &= ~IXGBE_LINK_SPEED_100_FULL;
  break;
 default:
  break;
 }

 return 0;
}
