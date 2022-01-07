
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_phy_info {int addr; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int E1000_ERR_PHY ;
 int E1000_I2CCMD ;
 int E1000_I2CCMD_ERROR ;
 int E1000_I2CCMD_OPCODE_WRITE ;
 int E1000_I2CCMD_PHY_ADDR_SHIFT ;
 int E1000_I2CCMD_PHY_TIMEOUT ;
 int E1000_I2CCMD_READY ;
 int E1000_I2CCMD_REG_ADDR_SHIFT ;
 int hw_dbg (char*,...) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;

s32 igb_write_phy_reg_i2c(struct e1000_hw *hw, u32 offset, u16 data)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 i, i2ccmd = 0;
 u16 phy_data_swapped;


 if ((hw->phy.addr == 0) || (hw->phy.addr > 7)) {
  hw_dbg("PHY I2C Address %d is out of range.\n",
     hw->phy.addr);
  return -E1000_ERR_CONFIG;
 }


 phy_data_swapped = ((data >> 8) & 0x00FF) | ((data << 8) & 0xFF00);





 i2ccmd = ((offset << E1000_I2CCMD_REG_ADDR_SHIFT) |
    (phy->addr << E1000_I2CCMD_PHY_ADDR_SHIFT) |
    E1000_I2CCMD_OPCODE_WRITE |
    phy_data_swapped);

 wr32(E1000_I2CCMD, i2ccmd);


 for (i = 0; i < E1000_I2CCMD_PHY_TIMEOUT; i++) {
  udelay(50);
  i2ccmd = rd32(E1000_I2CCMD);
  if (i2ccmd & E1000_I2CCMD_READY)
   break;
 }
 if (!(i2ccmd & E1000_I2CCMD_READY)) {
  hw_dbg("I2CCMD Write did not complete\n");
  return -E1000_ERR_PHY;
 }
 if (i2ccmd & E1000_I2CCMD_ERROR) {
  hw_dbg("I2CCMD Error bit set\n");
  return -E1000_ERR_PHY;
 }

 return 0;
}
