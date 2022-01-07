
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef unsigned int u16 ;
struct eeprom_93cx6 {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (unsigned int) ;
 int eeprom_93cx6_read (struct eeprom_93cx6*,scalar_t__ const,unsigned int*) ;

void eeprom_93cx6_multiread(struct eeprom_93cx6 *eeprom, const u8 word,
 __le16 *data, const u16 words)
{
 unsigned int i;
 u16 tmp;

 for (i = 0; i < words; i++) {
  tmp = 0;
  eeprom_93cx6_read(eeprom, word + i, &tmp);
  data[i] = cpu_to_le16(tmp);
 }
}
