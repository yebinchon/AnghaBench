
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned int u16 ;
struct eeprom_93cx6 {int dummy; } ;


 int eeprom_93cx6_readb (struct eeprom_93cx6*,scalar_t__ const,scalar_t__*) ;

void eeprom_93cx6_multireadb(struct eeprom_93cx6 *eeprom, const u8 byte,
 u8 *data, const u16 bytes)
{
 unsigned int i;

 for (i = 0; i < bytes; i++)
  eeprom_93cx6_readb(eeprom, byte + i, &data[i]);
}
