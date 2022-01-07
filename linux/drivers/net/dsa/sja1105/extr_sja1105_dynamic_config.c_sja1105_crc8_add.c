
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 sja1105_crc8_add(u8 crc, u8 byte, u8 poly)
{
 int i;

 for (i = 0; i < 8; i++) {
  if ((crc ^ byte) & (1 << 7)) {
   crc <<= 1;
   crc ^= poly;
  } else {
   crc <<= 1;
  }
  byte <<= 1;
 }
 return crc;
}
