
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {scalar_t__ device_id; TYPE_2__ phy; } ;
typedef int s32 ;


 scalar_t__ IXGBE_DEV_ID_82599_T3_LOM ;
 int IXGBE_ERR_OVERTEMP ;
 int IXGBE_TN_LASI_STATUS_REG ;
 int IXGBE_TN_LASI_STATUS_TEMP_ALARM ;
 int MDIO_MMD_PMAPMD ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

s32 ixgbe_tn_check_overtemp(struct ixgbe_hw *hw)
{
 u16 phy_data = 0;

 if (hw->device_id != IXGBE_DEV_ID_82599_T3_LOM)
  return 0;


 hw->phy.ops.read_reg(hw, IXGBE_TN_LASI_STATUS_REG,
        MDIO_MMD_PMAPMD, &phy_data);

 if (!(phy_data & IXGBE_TN_LASI_STATUS_TEMP_ALARM))
  return 0;

 return IXGBE_ERR_OVERTEMP;
}
