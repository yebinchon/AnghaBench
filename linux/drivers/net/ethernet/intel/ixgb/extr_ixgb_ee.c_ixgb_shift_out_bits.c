
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgb_hw {int dummy; } ;


 int EECD ;
 int IXGB_EECD_DI ;
 int IXGB_EECD_DO ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_FLUSH (struct ixgb_hw*) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int ixgb_lower_clock (struct ixgb_hw*,int*) ;
 int ixgb_raise_clock (struct ixgb_hw*,int*) ;
 int udelay (int) ;

__attribute__((used)) static void
ixgb_shift_out_bits(struct ixgb_hw *hw,
      u16 data,
      u16 count)
{
 u32 eecd_reg;
 u32 mask;





 mask = 0x01 << (count - 1);
 eecd_reg = IXGB_READ_REG(hw, EECD);
 eecd_reg &= ~(IXGB_EECD_DO | IXGB_EECD_DI);
 do {





  eecd_reg &= ~IXGB_EECD_DI;

  if (data & mask)
   eecd_reg |= IXGB_EECD_DI;

  IXGB_WRITE_REG(hw, EECD, eecd_reg);
  IXGB_WRITE_FLUSH(hw);

  udelay(50);

  ixgb_raise_clock(hw, &eecd_reg);
  ixgb_lower_clock(hw, &eecd_reg);

  mask = mask >> 1;

 } while (mask);


 eecd_reg &= ~IXGB_EECD_DI;
 IXGB_WRITE_REG(hw, EECD, eecd_reg);
}
