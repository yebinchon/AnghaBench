
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;int (* check_reset_block ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE ;
 int E1000_FEXTNVM_SW_CONFIG_ICH8M ;
 int E1000_PHY_CTRL_D0A_LPLU ;
 int E1000_PHY_CTRL_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_GBE_DISABLE ;
 int E1000_PHY_CTRL_NOND0A_LPLU ;
 int EXTCNF_CTRL ;
 int FEXTNVM ;
 int HV_OEM_BITS ;
 int HV_OEM_BITS_GBE_DIS ;
 int HV_OEM_BITS_LPLU ;
 int HV_OEM_BITS_RESTART_AN ;
 int PHY_CTRL ;
 scalar_t__ e1000_pchlan ;
 scalar_t__ e1e_rphy_locked (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1e_wphy_locked (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state)
{
 s32 ret_val = 0;
 u32 mac_reg;
 u16 oem_reg;

 if (hw->mac.type < e1000_pchlan)
  return ret_val;

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  return ret_val;

 if (hw->mac.type == e1000_pchlan) {
  mac_reg = er32(EXTCNF_CTRL);
  if (mac_reg & E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE)
   goto release;
 }

 mac_reg = er32(FEXTNVM);
 if (!(mac_reg & E1000_FEXTNVM_SW_CONFIG_ICH8M))
  goto release;

 mac_reg = er32(PHY_CTRL);

 ret_val = e1e_rphy_locked(hw, HV_OEM_BITS, &oem_reg);
 if (ret_val)
  goto release;

 oem_reg &= ~(HV_OEM_BITS_GBE_DIS | HV_OEM_BITS_LPLU);

 if (d0_state) {
  if (mac_reg & E1000_PHY_CTRL_GBE_DISABLE)
   oem_reg |= HV_OEM_BITS_GBE_DIS;

  if (mac_reg & E1000_PHY_CTRL_D0A_LPLU)
   oem_reg |= HV_OEM_BITS_LPLU;
 } else {
  if (mac_reg & (E1000_PHY_CTRL_GBE_DISABLE |
          E1000_PHY_CTRL_NOND0A_GBE_DISABLE))
   oem_reg |= HV_OEM_BITS_GBE_DIS;

  if (mac_reg & (E1000_PHY_CTRL_D0A_LPLU |
          E1000_PHY_CTRL_NOND0A_LPLU))
   oem_reg |= HV_OEM_BITS_LPLU;
 }


 if ((d0_state || (hw->mac.type != e1000_pchlan)) &&
     !hw->phy.ops.check_reset_block(hw))
  oem_reg |= HV_OEM_BITS_RESTART_AN;

 ret_val = e1e_wphy_locked(hw, HV_OEM_BITS, oem_reg);

release:
 hw->phy.ops.release(hw);

 return ret_val;
}
