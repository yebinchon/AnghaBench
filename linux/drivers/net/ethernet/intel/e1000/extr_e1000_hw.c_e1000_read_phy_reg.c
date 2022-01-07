
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; } ;
typedef int s32 ;


 int IGP01E1000_PHY_PAGE_SELECT ;
 int MAX_PHY_MULTI_PAGE_REG ;
 int MAX_PHY_REG_ADDRESS ;
 scalar_t__ e1000_phy_igp ;
 int e1000_phy_lock ;
 int e1000_read_phy_reg_ex (struct e1000_hw*,int,int *) ;
 int e1000_write_phy_reg_ex (struct e1000_hw*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

s32 e1000_read_phy_reg(struct e1000_hw *hw, u32 reg_addr, u16 *phy_data)
{
 u32 ret_val;
 unsigned long flags;

 spin_lock_irqsave(&e1000_phy_lock, flags);

 if ((hw->phy_type == e1000_phy_igp) &&
     (reg_addr > MAX_PHY_MULTI_PAGE_REG)) {
  ret_val = e1000_write_phy_reg_ex(hw, IGP01E1000_PHY_PAGE_SELECT,
       (u16) reg_addr);
  if (ret_val)
   goto out;
 }

 ret_val = e1000_read_phy_reg_ex(hw, MAX_PHY_REG_ADDRESS & reg_addr,
     phy_data);
out:
 spin_unlock_irqrestore(&e1000_phy_lock, flags);

 return ret_val;
}
