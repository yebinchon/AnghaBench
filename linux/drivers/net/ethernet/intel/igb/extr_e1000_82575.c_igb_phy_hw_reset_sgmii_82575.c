
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int,int) ;} ;
struct e1000_phy_info {scalar_t__ id; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ M88E1512_E_PHY_ID ;
 scalar_t__ M88E1543_E_PHY_ID ;
 int hw_dbg (char*) ;
 scalar_t__ igb_initialize_M88E1512_phy (struct e1000_hw*) ;
 scalar_t__ igb_initialize_M88E1543_phy (struct e1000_hw*) ;
 scalar_t__ igb_phy_sw_reset (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int,int) ;

__attribute__((used)) static s32 igb_phy_hw_reset_sgmii_82575(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;





 hw_dbg("Soft resetting SGMII attached PHY...\n");




 ret_val = hw->phy.ops.write_reg(hw, 0x1B, 0x8084);
 if (ret_val)
  goto out;

 ret_val = igb_phy_sw_reset(hw);
 if (ret_val)
  goto out;

 if (phy->id == M88E1512_E_PHY_ID)
  ret_val = igb_initialize_M88E1512_phy(hw);
 if (phy->id == M88E1543_E_PHY_ID)
  ret_val = igb_initialize_M88E1543_phy(hw);
out:
 return ret_val;
}
