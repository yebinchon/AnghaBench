
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;


 int CTRL ;
 int E1000_CTRL_MDC_DIR ;
 int E1000_CTRL_MDIO ;
 int E1000_CTRL_MDIO_DIR ;
 int E1000_WRITE_FLUSH () ;
 int e1000_lower_mdi_clk (struct e1000_hw*,int*) ;
 int e1000_raise_mdi_clk (struct e1000_hw*,int*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void e1000_shift_out_mdi_bits(struct e1000_hw *hw, u32 data, u16 count)
{
 u32 ctrl;
 u32 mask;





 mask = 0x01;
 mask <<= (count - 1);

 ctrl = er32(CTRL);


 ctrl |= (E1000_CTRL_MDIO_DIR | E1000_CTRL_MDC_DIR);

 while (mask) {





  if (data & mask)
   ctrl |= E1000_CTRL_MDIO;
  else
   ctrl &= ~E1000_CTRL_MDIO;

  ew32(CTRL, ctrl);
  E1000_WRITE_FLUSH();

  udelay(10);

  e1000_raise_mdi_clk(hw, &ctrl);
  e1000_lower_mdi_clk(hw, &ctrl);

  mask = mask >> 1;
 }
}
