
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int magic ;
typedef int csum ;
typedef int __le16 ;


 scalar_t__ SLIC_EEPROM_MAGIC ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int *,unsigned char*,int) ;
 scalar_t__ slic_eeprom_csum (unsigned char*,unsigned int) ;

__attribute__((used)) static bool slic_eeprom_valid(unsigned char *eeprom, unsigned int size)
{
 const unsigned int MAX_SIZE = 128;
 const unsigned int MIN_SIZE = 98;
 __le16 magic;
 __le16 csum;

 if (size < MIN_SIZE || size > MAX_SIZE)
  return 0;
 memcpy(&magic, eeprom, sizeof(magic));
 if (le16_to_cpu(magic) != SLIC_EEPROM_MAGIC)
  return 0;

 size -= 2;
 memcpy(&csum, eeprom + size, sizeof(csum));

 return (le16_to_cpu(csum) == slic_eeprom_csum(eeprom, size));
}
