
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



u16 onfi_crc16(u16 crc, u8 const *p, size_t len)
{
 int i;
 while (len--) {
  crc ^= *p++ << 8;
  for (i = 0; i < 8; i++)
   crc = (crc << 1) ^ ((crc & 0x8000) ? 0x8005 : 0);
 }

 return crc;
}
