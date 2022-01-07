
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;


 unsigned char CRC32_POLY_LE ;

__attribute__((used)) static inline u32 calc_crc(unsigned char *buf, int len)
{
 u32 reg;
 u32 tmp;
 int j, k;

 reg = 0xffffffff;

 for (j = 0; j < len; j++) {
  reg ^= buf[j];

  for (k = 0; k < 8; k++) {
   tmp = reg & 0x01;

   reg >>= 1;

   if (tmp)
    reg ^= CRC32_POLY_LE;
  }
 }

 return ~reg;
}
