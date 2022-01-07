
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_nvm_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int BIT (int) ;
 int E1000_EECD_DI ;
 int E1000_EECD_DO ;
 int EECD ;
 int e1000_lower_eec_clk (struct e1000_hw*,int*) ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int e1000_raise_eec_clk (struct e1000_hw*,int*) ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void e1000_shift_out_eec_bits(struct e1000_hw *hw, u16 data, u16 count)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = er32(EECD);
 u32 mask;

 mask = BIT(count - 1);
 if (nvm->type == e1000_nvm_eeprom_spi)
  eecd |= E1000_EECD_DO;

 do {
  eecd &= ~E1000_EECD_DI;

  if (data & mask)
   eecd |= E1000_EECD_DI;

  ew32(EECD, eecd);
  e1e_flush();

  udelay(nvm->delay_usec);

  e1000_raise_eec_clk(hw, &eecd);
  e1000_lower_eec_clk(hw, &eecd);

  mask >>= 1;
 } while (mask);

 eecd &= ~E1000_EECD_DI;
 ew32(EECD, eecd);
}
