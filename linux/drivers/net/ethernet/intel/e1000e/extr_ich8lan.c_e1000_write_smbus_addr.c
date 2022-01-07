
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int BIT (int) ;
 int E1000_STRAP_SMBUS_ADDRESS_MASK ;
 int E1000_STRAP_SMBUS_ADDRESS_SHIFT ;
 int E1000_STRAP_SMT_FREQ_MASK ;
 int E1000_STRAP_SMT_FREQ_SHIFT ;
 int HV_SMB_ADDR ;
 int HV_SMB_ADDR_FREQ_HIGH_SHIFT ;
 int HV_SMB_ADDR_FREQ_LOW_SHIFT ;
 int HV_SMB_ADDR_FREQ_MASK ;
 int HV_SMB_ADDR_MASK ;
 int HV_SMB_ADDR_PEC_EN ;
 int HV_SMB_ADDR_VALID ;
 int STRAP ;
 scalar_t__ e1000_phy_i217 ;
 scalar_t__ e1000_read_phy_reg_hv_locked (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_write_phy_reg_hv_locked (struct e1000_hw*,int ,int) ;
 int e_dbg (char*) ;
 int er32 (int ) ;

__attribute__((used)) static s32 e1000_write_smbus_addr(struct e1000_hw *hw)
{
 u16 phy_data;
 u32 strap = er32(STRAP);
 u32 freq = (strap & E1000_STRAP_SMT_FREQ_MASK) >>
     E1000_STRAP_SMT_FREQ_SHIFT;
 s32 ret_val;

 strap &= E1000_STRAP_SMBUS_ADDRESS_MASK;

 ret_val = e1000_read_phy_reg_hv_locked(hw, HV_SMB_ADDR, &phy_data);
 if (ret_val)
  return ret_val;

 phy_data &= ~HV_SMB_ADDR_MASK;
 phy_data |= (strap >> E1000_STRAP_SMBUS_ADDRESS_SHIFT);
 phy_data |= HV_SMB_ADDR_PEC_EN | HV_SMB_ADDR_VALID;

 if (hw->phy.type == e1000_phy_i217) {

  if (freq--) {
   phy_data &= ~HV_SMB_ADDR_FREQ_MASK;
   phy_data |= (freq & BIT(0)) <<
       HV_SMB_ADDR_FREQ_LOW_SHIFT;
   phy_data |= (freq & BIT(1)) <<
       (HV_SMB_ADDR_FREQ_HIGH_SHIFT - 1);
  } else {
   e_dbg("Unsupported SMB frequency in PHY\n");
  }
 }

 return e1000_write_phy_reg_hv_locked(hw, HV_SMB_ADDR, phy_data);
}
