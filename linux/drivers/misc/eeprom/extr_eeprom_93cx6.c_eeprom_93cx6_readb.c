
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct eeprom_93cx6 {int width; } ;


 int PCI_EEPROM_READ_OPCODE ;
 scalar_t__ PCI_EEPROM_WIDTH_OPCODE ;
 int eeprom_93cx6_cleanup (struct eeprom_93cx6*) ;
 int eeprom_93cx6_read_bits (struct eeprom_93cx6*,int*,int) ;
 int eeprom_93cx6_startup (struct eeprom_93cx6*) ;
 int eeprom_93cx6_write_bits (struct eeprom_93cx6*,int,scalar_t__) ;

void eeprom_93cx6_readb(struct eeprom_93cx6 *eeprom, const u8 byte,
 u8 *data)
{
 u16 command;
 u16 tmp;




 eeprom_93cx6_startup(eeprom);




 command = (PCI_EEPROM_READ_OPCODE << (eeprom->width + 1)) | byte;
 eeprom_93cx6_write_bits(eeprom, command,
  PCI_EEPROM_WIDTH_OPCODE + eeprom->width + 1);




 eeprom_93cx6_read_bits(eeprom, &tmp, 8);
 *data = tmp & 0xff;




 eeprom_93cx6_cleanup(eeprom);
}
