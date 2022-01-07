
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_eeprom_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_eeprom_info eeprom; } ;


 int E1000_EECD_DI ;
 int E1000_EECD_DO ;
 int E1000_WRITE_FLUSH () ;
 int EECD ;
 scalar_t__ e1000_eeprom_microwire ;
 scalar_t__ e1000_eeprom_spi ;
 int e1000_lower_ee_clk (struct e1000_hw*,int*) ;
 int e1000_raise_ee_clk (struct e1000_hw*,int*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static void e1000_shift_out_ee_bits(struct e1000_hw *hw, u16 data, u16 count)
{
 struct e1000_eeprom_info *eeprom = &hw->eeprom;
 u32 eecd;
 u32 mask;





 mask = 0x01 << (count - 1);
 eecd = er32(EECD);
 if (eeprom->type == e1000_eeprom_microwire)
  eecd &= ~E1000_EECD_DO;
 else if (eeprom->type == e1000_eeprom_spi)
  eecd |= E1000_EECD_DO;

 do {






  eecd &= ~E1000_EECD_DI;

  if (data & mask)
   eecd |= E1000_EECD_DI;

  ew32(EECD, eecd);
  E1000_WRITE_FLUSH();

  udelay(eeprom->delay_usec);

  e1000_raise_ee_clk(hw, &eecd);
  e1000_lower_ee_clk(hw, &eecd);

  mask = mask >> 1;

 } while (mask);


 eecd &= ~E1000_EECD_DI;
 ew32(EECD, eecd);
}
