
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int dummy; } ;


 int EECD ;
 int IXGB_EECD_CS ;
 int IXGB_EECD_DI ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int ixgb_clock_eeprom (struct ixgb_hw*) ;

__attribute__((used)) static void
ixgb_cleanup_eeprom(struct ixgb_hw *hw)
{
 u32 eecd_reg;

 eecd_reg = IXGB_READ_REG(hw, EECD);

 eecd_reg &= ~(IXGB_EECD_CS | IXGB_EECD_DI);

 IXGB_WRITE_REG(hw, EECD, eecd_reg);

 ixgb_clock_eeprom(hw);
}
