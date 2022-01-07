
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_nvm_info {scalar_t__ type; int delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;


 int E1000_EECD ;
 int E1000_EECD_CS ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int rd32 (int ) ;
 int udelay (int ) ;
 int wr32 (int ,int ) ;
 int wrfl () ;

__attribute__((used)) static void igb_standby_nvm(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = rd32(E1000_EECD);

 if (nvm->type == e1000_nvm_eeprom_spi) {

  eecd |= E1000_EECD_CS;
  wr32(E1000_EECD, eecd);
  wrfl();
  udelay(nvm->delay_usec);
  eecd &= ~E1000_EECD_CS;
  wr32(E1000_EECD, eecd);
  wrfl();
  udelay(nvm->delay_usec);
 }
}
