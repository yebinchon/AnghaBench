
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_hw {int ctrl_flags; } ;


 int ATL1C_FPGA_VERSION ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int ) ;
 int REG_MDIO_CTRL ;
 int atl1c_wait_mdio_idle (struct atl1c_hw*) ;

void atl1c_stop_phy_polling(struct atl1c_hw *hw)
{
 if (!(hw->ctrl_flags & ATL1C_FPGA_VERSION))
  return;

 AT_WRITE_REG(hw, REG_MDIO_CTRL, 0);
 atl1c_wait_mdio_idle(hw);
}
