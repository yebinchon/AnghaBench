
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int CTRL ;
 int E1000_CTRL_MDIO ;
 int E1000_CTRL_MDIO_DIR ;
 int E1000_WRITE_FLUSH () ;
 int e1000_lower_mdi_clk (struct e1000_hw*,int*) ;
 int e1000_raise_mdi_clk (struct e1000_hw*,int*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static u16 e1000_shift_in_mdi_bits(struct e1000_hw *hw)
{
 u32 ctrl;
 u16 data = 0;
 u8 i;
 ctrl = er32(CTRL);




 ctrl &= ~E1000_CTRL_MDIO_DIR;
 ctrl &= ~E1000_CTRL_MDIO;

 ew32(CTRL, ctrl);
 E1000_WRITE_FLUSH();





 e1000_raise_mdi_clk(hw, &ctrl);
 e1000_lower_mdi_clk(hw, &ctrl);

 for (data = 0, i = 0; i < 16; i++) {
  data = data << 1;
  e1000_raise_mdi_clk(hw, &ctrl);
  ctrl = er32(CTRL);

  if (ctrl & E1000_CTRL_MDIO)
   data |= 1;
  e1000_lower_mdi_clk(hw, &ctrl);
 }

 e1000_raise_mdi_clk(hw, &ctrl);
 e1000_lower_mdi_clk(hw, &ctrl);

 return data;
}
