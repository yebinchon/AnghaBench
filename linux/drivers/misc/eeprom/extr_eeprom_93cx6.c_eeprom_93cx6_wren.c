
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct eeprom_93cx6 {int width; } ;


 int PCI_EEPROM_EWDS_OPCODE ;
 int PCI_EEPROM_EWEN_OPCODE ;
 scalar_t__ PCI_EEPROM_WIDTH_OPCODE ;
 int eeprom_93cx6_cleanup (struct eeprom_93cx6*) ;
 int eeprom_93cx6_startup (struct eeprom_93cx6*) ;
 int eeprom_93cx6_write_bits (struct eeprom_93cx6*,int,scalar_t__) ;

void eeprom_93cx6_wren(struct eeprom_93cx6 *eeprom, bool enable)
{
 u16 command;


 eeprom_93cx6_startup(eeprom);



 command = enable ? PCI_EEPROM_EWEN_OPCODE : PCI_EEPROM_EWDS_OPCODE;
 command <<= (eeprom->width - 2);

 eeprom_93cx6_write_bits(eeprom, command,
    PCI_EEPROM_WIDTH_OPCODE + eeprom->width);

 eeprom_93cx6_cleanup(eeprom);
}
