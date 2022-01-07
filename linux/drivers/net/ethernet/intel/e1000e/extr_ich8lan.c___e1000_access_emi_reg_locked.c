
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int I82579_EMI_ADDR ;
 int I82579_EMI_DATA ;
 scalar_t__ e1e_rphy_locked (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy_locked (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 __e1000_access_emi_reg_locked(struct e1000_hw *hw, u16 address,
      u16 *data, bool read)
{
 s32 ret_val;

 ret_val = e1e_wphy_locked(hw, I82579_EMI_ADDR, address);
 if (ret_val)
  return ret_val;

 if (read)
  ret_val = e1e_rphy_locked(hw, I82579_EMI_DATA, data);
 else
  ret_val = e1e_wphy_locked(hw, I82579_EMI_DATA, *data);

 return ret_val;
}
