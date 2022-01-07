
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct igc_nvm_info {int opcode_bits; int delay_usec; int page_size; int address_bits; int word_size; int type; } ;
struct igc_hw {struct igc_nvm_info nvm; } ;
typedef int s32 ;


 int BIT (int) ;
 int IGC_EECD ;
 int IGC_EECD_ADDR_BITS ;
 int IGC_EECD_SIZE_EX_MASK ;
 int IGC_EECD_SIZE_EX_SHIFT ;
 scalar_t__ NVM_WORD_SIZE_BASE_SHIFT ;
 int igc_nvm_eeprom_spi ;
 int rd32 (int ) ;

__attribute__((used)) static s32 igc_init_nvm_params_base(struct igc_hw *hw)
{
 struct igc_nvm_info *nvm = &hw->nvm;
 u32 eecd = rd32(IGC_EECD);
 u16 size;

 size = (u16)((eecd & IGC_EECD_SIZE_EX_MASK) >>
       IGC_EECD_SIZE_EX_SHIFT);




 size += NVM_WORD_SIZE_BASE_SHIFT;




 if (size > 15)
  size = 15;

 nvm->type = igc_nvm_eeprom_spi;
 nvm->word_size = BIT(size);
 nvm->opcode_bits = 8;
 nvm->delay_usec = 1;

 nvm->page_size = eecd & IGC_EECD_ADDR_BITS ? 32 : 8;
 nvm->address_bits = eecd & IGC_EECD_ADDR_BITS ?
       16 : 8;

 if (nvm->word_size == BIT(15))
  nvm->page_size = 128;

 return 0;
}
