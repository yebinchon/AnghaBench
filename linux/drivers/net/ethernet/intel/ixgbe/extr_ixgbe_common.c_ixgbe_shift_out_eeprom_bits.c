
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;


 scalar_t__ BIT (scalar_t__) ;
 int IXGBE_EEC (struct ixgbe_hw*) ;
 scalar_t__ IXGBE_EEC_DI ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int ixgbe_lower_eeprom_clk (struct ixgbe_hw*,scalar_t__*) ;
 int ixgbe_raise_eeprom_clk (struct ixgbe_hw*,scalar_t__*) ;
 int udelay (int) ;

__attribute__((used)) static void ixgbe_shift_out_eeprom_bits(struct ixgbe_hw *hw, u16 data,
     u16 count)
{
 u32 eec;
 u32 mask;
 u32 i;

 eec = IXGBE_READ_REG(hw, IXGBE_EEC(hw));





 mask = BIT(count - 1);

 for (i = 0; i < count; i++) {







  if (data & mask)
   eec |= IXGBE_EEC_DI;
  else
   eec &= ~IXGBE_EEC_DI;

  IXGBE_WRITE_REG(hw, IXGBE_EEC(hw), eec);
  IXGBE_WRITE_FLUSH(hw);

  udelay(1);

  ixgbe_raise_eeprom_clk(hw, &eec);
  ixgbe_lower_eeprom_clk(hw, &eec);





  mask = mask >> 1;
 }


 eec &= ~IXGBE_EEC_DI;
 IXGBE_WRITE_REG(hw, IXGBE_EEC(hw), eec);
 IXGBE_WRITE_FLUSH(hw);
}
