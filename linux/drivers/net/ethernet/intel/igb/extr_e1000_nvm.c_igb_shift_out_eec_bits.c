
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_nvm_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int E1000_EECD ;
 int E1000_EECD_DI ;
 int E1000_EECD_DO ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int igb_lower_eec_clk (struct e1000_hw*,int*) ;
 int igb_raise_eec_clk (struct e1000_hw*,int*) ;
 int rd32 (int ) ;
 int udelay (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igb_shift_out_eec_bits(struct e1000_hw *hw, u16 data, u16 count)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = rd32(E1000_EECD);
 u32 mask;

 mask = 1u << (count - 1);
 if (nvm->type == e1000_nvm_eeprom_spi)
  eecd |= E1000_EECD_DO;

 do {
  eecd &= ~E1000_EECD_DI;

  if (data & mask)
   eecd |= E1000_EECD_DI;

  wr32(E1000_EECD, eecd);
  wrfl();

  udelay(nvm->delay_usec);

  igb_raise_eec_clk(hw, &eecd);
  igb_lower_eec_clk(hw, &eecd);

  mask >>= 1;
 } while (mask);

 eecd &= ~E1000_EECD_DI;
 wr32(E1000_EECD, eecd);
}
