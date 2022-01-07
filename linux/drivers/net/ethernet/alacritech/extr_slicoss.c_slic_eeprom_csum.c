
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int data ;
typedef int __le16 ;


 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int *,unsigned char*,int) ;

__attribute__((used)) static u16 slic_eeprom_csum(unsigned char *eeprom, unsigned int len)
{
 unsigned char *ptr = eeprom;
 u32 csum = 0;
 __le16 data;

 while (len > 1) {
  memcpy(&data, ptr, sizeof(data));
  csum += le16_to_cpu(data);
  ptr += 2;
  len -= 2;
 }
 if (len > 0)
  csum += *(u8 *)ptr;
 while (csum >> 16)
  csum = (csum & 0xFFFF) + ((csum >> 16) & 0xFFFF);
 return ~csum;
}
