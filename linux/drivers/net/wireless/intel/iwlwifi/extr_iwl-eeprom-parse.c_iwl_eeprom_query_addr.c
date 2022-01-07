
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 scalar_t__ WARN_ON (int) ;
 size_t eeprom_indirect_address (int const*,size_t,size_t) ;

__attribute__((used)) static const u8 *iwl_eeprom_query_addr(const u8 *eeprom, size_t eeprom_size,
           u32 offset)
{
 u32 address = eeprom_indirect_address(eeprom, eeprom_size, offset);

 if (WARN_ON(address >= eeprom_size))
  return ((void*)0);

 return &eeprom[address];
}
