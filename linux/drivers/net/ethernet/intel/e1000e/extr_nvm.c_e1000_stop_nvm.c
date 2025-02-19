
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;


 int E1000_EECD_CS ;
 int EECD ;
 int e1000_lower_eec_clk (struct e1000_hw*,int *) ;
 scalar_t__ e1000_nvm_eeprom_spi ;
 int er32 (int ) ;

__attribute__((used)) static void e1000_stop_nvm(struct e1000_hw *hw)
{
 u32 eecd;

 eecd = er32(EECD);
 if (hw->nvm.type == e1000_nvm_eeprom_spi) {

  eecd |= E1000_EECD_CS;
  e1000_lower_eec_clk(hw, &eecd);
 }
}
