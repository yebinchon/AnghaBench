
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct e1000_nvm_info {scalar_t__ type; int opcode_bits; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef int s32 ;


 int E1000_EECD ;
 int E1000_EECD_CS ;
 int E1000_EECD_SK ;
 int E1000_ERR_NVM ;
 scalar_t__ NVM_MAX_RETRY_SPI ;
 int NVM_RDSR_OPCODE_SPI ;
 int NVM_STATUS_RDY_SPI ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int hw_dbg (char*) ;
 scalar_t__ igb_shift_in_eec_bits (struct e1000_hw*,int) ;
 int igb_shift_out_eec_bits (struct e1000_hw*,int ,int ) ;
 int igb_standby_nvm (struct e1000_hw*) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static s32 igb_ready_nvm_eeprom(struct e1000_hw *hw)
{
 struct e1000_nvm_info *nvm = &hw->nvm;
 u32 eecd = rd32(E1000_EECD);
 s32 ret_val = 0;
 u16 timeout = 0;
 u8 spi_stat_reg;


 if (nvm->type == e1000_nvm_eeprom_spi) {

  eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
  wr32(E1000_EECD, eecd);
  wrfl();
  udelay(1);
  timeout = NVM_MAX_RETRY_SPI;






  while (timeout) {
   igb_shift_out_eec_bits(hw, NVM_RDSR_OPCODE_SPI,
            hw->nvm.opcode_bits);
   spi_stat_reg = (u8)igb_shift_in_eec_bits(hw, 8);
   if (!(spi_stat_reg & NVM_STATUS_RDY_SPI))
    break;

   udelay(5);
   igb_standby_nvm(hw);
   timeout--;
  }

  if (!timeout) {
   hw_dbg("SPI NVM Status error\n");
   ret_val = -E1000_ERR_NVM;
   goto out;
  }
 }

out:
 return ret_val;
}
