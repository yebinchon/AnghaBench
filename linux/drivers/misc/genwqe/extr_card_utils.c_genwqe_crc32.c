
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* crc32_tab ;

u32 genwqe_crc32(u8 *buff, size_t len, u32 init)
{
 int i;
 u32 crc;

 crc = init;
 while (len--) {
  i = ((crc >> 24) ^ *buff++) & 0xFF;
  crc = (crc << 8) ^ crc32_tab[i];
 }
 return crc;
}
