
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct alx_hw {scalar_t__ link_speed; } ;


 int ALX_MDIO ;
 int ALX_MDIO_CLK_SEL_25MD128 ;
 int ALX_MDIO_CLK_SEL_25MD4 ;
 int ALX_MDIO_CLK_SEL_SHIFT ;
 int ALX_MDIO_DATA_SHIFT ;
 int ALX_MDIO_EXTN ;
 int ALX_MDIO_EXTN_DEVAD_SHIFT ;
 int ALX_MDIO_EXTN_REG_SHIFT ;
 int ALX_MDIO_MODE_EXT ;
 int ALX_MDIO_REG_SHIFT ;
 int ALX_MDIO_SPRES_PRMBL ;
 int ALX_MDIO_START ;
 scalar_t__ SPEED_UNKNOWN ;
 int alx_wait_mdio_idle (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;

__attribute__((used)) static int alx_write_phy_core(struct alx_hw *hw, bool ext, u8 dev,
         u16 reg, u16 phy_data)
{
 u32 val, clk_sel;


 clk_sel = hw->link_speed != SPEED_UNKNOWN ?
   ALX_MDIO_CLK_SEL_25MD4 :
   ALX_MDIO_CLK_SEL_25MD128;

 if (ext) {
  val = dev << ALX_MDIO_EXTN_DEVAD_SHIFT |
        reg << ALX_MDIO_EXTN_REG_SHIFT;
  alx_write_mem32(hw, ALX_MDIO_EXTN, val);

  val = ALX_MDIO_SPRES_PRMBL |
        clk_sel << ALX_MDIO_CLK_SEL_SHIFT |
        phy_data << ALX_MDIO_DATA_SHIFT |
        ALX_MDIO_START | ALX_MDIO_MODE_EXT;
 } else {
  val = ALX_MDIO_SPRES_PRMBL |
        clk_sel << ALX_MDIO_CLK_SEL_SHIFT |
        reg << ALX_MDIO_REG_SHIFT |
        phy_data << ALX_MDIO_DATA_SHIFT |
        ALX_MDIO_START;
 }
 alx_write_mem32(hw, ALX_MDIO, val);

 return alx_wait_mdio_idle(hw);
}
