
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 scalar_t__ EEPROM_CHECKSUM_REG ;
 scalar_t__ EEPROM_SUM ;
 scalar_t__ e1000_read_eeprom (struct e1000_hw*,scalar_t__,int,scalar_t__*) ;

__attribute__((used)) static int e1000_eeprom_test(struct e1000_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 temp;
 u16 checksum = 0;
 u16 i;

 *data = 0;

 for (i = 0; i < (EEPROM_CHECKSUM_REG + 1); i++) {
  if ((e1000_read_eeprom(hw, i, 1, &temp)) < 0) {
   *data = 1;
   break;
  }
  checksum += temp;
 }


 if ((checksum != (u16)EEPROM_SUM) && !(*data))
  *data = 2;

 return *data;
}
